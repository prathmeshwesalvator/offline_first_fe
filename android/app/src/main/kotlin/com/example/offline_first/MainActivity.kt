package com.example.offline_first
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.net.ConnectivityManager
import android.net.NetworkCapabilities

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel

class MainActivity: FlutterActivity() {

    private val CHANNEL = "network_status_stream"

    private var events: EventChannel.EventSink? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        EventChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setStreamHandler(object : EventChannel.StreamHandler {

            private var receiver: BroadcastReceiver? = null

            override fun onListen(
                arguments: Any?,
                eventSink: EventChannel.EventSink?
            ) {

                events = eventSink

                receiver = object : BroadcastReceiver() {
                    override fun onReceive(
                        context: Context?,
                        intent: Intent?
                    ) {

                        if (isConnected()) {
                            events?.success("connected")
                        } else {
                            events?.success("disconnected")
                        }
                    }
                }

                registerReceiver(
                    receiver,
                    IntentFilter(
                        ConnectivityManager.CONNECTIVITY_ACTION
                    )
                )
            }

            override fun onCancel(arguments: Any?) {
                unregisterReceiver(receiver)
                receiver = null
            }
        })
    }

    private fun isConnected(): Boolean {

        val connectivityManager =
            getSystemService(Context.CONNECTIVITY_SERVICE)
                    as ConnectivityManager

        val network =
            connectivityManager.activeNetwork ?: return false

        val capabilities =
            connectivityManager.getNetworkCapabilities(network)
                ?: return false

        return capabilities.hasCapability(
            NetworkCapabilities.NET_CAPABILITY_INTERNET
        )
    }
}