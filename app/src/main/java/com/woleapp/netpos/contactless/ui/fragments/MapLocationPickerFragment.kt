package com.woleapp.netpos.contactless.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.mapbox.geojson.Point
import com.mapbox.maps.*
import com.mapbox.maps.plugin.annotation.annotations
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationManager
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationOptions
import com.mapbox.maps.plugin.annotation.generated.createPointAnnotationManager
import com.mapbox.maps.plugin.gestures.addOnMapClickListener
import com.mapbox.maps.plugin.gestures.gestures
import com.woleapp.netpos.contactless.databinding.FragmentMapLocationPickerBinding

class MapLocationPickerFragment : Fragment() {
    private lateinit var mapView: MapView
    private var droppedLatLng: Point? = null
    private lateinit var binding: FragmentMapLocationPickerBinding

    // Keep this as a class-level variable
    private lateinit var pointAnnotationManager: PointAnnotationManager

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        binding = FragmentMapLocationPickerBinding.inflate(inflater, container, false)

        return binding.root
    }

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        val mapInitOptions =
            MapInitOptions(
                context = requireContext(),
                resourceOptions =
                    ResourceOptions.Builder()
                        .accessToken("pk.eyJ1IjoibmV0cG9zIiwiYSI6ImNtZDV1czd5MDAzNmkycXMyanlzZ3lseXoifQ.Em5H4zBUh1D9OUCq9ZXa2g")
                        .build(),
            )
        mapView = MapView(requireContext(), mapInitOptions)

        (binding.root as ViewGroup).addView(
            mapView,
            0,
            FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
            ),
        )

        mapView.getMapboxMap().loadStyleUri(Style.MAPBOX_STREETS) { style ->

            // Initialize the Annotation plugin
            val annotationPlugin = mapView.annotations
            pointAnnotationManager = annotationPlugin.createPointAnnotationManager()

            mapView.gestures.addOnMapClickListener { point ->
                droppedLatLng = point

                // Clear previous marker
                pointAnnotationManager.deleteAll()

                // Add new marker
                val annotationOptions =
                    PointAnnotationOptions()
                        .withPoint(Point.fromLngLat(point.longitude(), point.latitude()))
                        .withIconImage("marker-default") // use default or custom marker
                        .withIconSize(1.5)

                pointAnnotationManager.create(annotationOptions)

                // Move camera to the dropped point
                mapView.getMapboxMap().setCamera(
                    CameraOptions.Builder().center(point).zoom(15.0).build(),
                )
                true
            }
        }

        binding.btnConfirmLocation.setOnClickListener {
            droppedLatLng?.let {
                Toast.makeText(requireContext(), "Lat: ${it.latitude()}, Lng: ${it.longitude()}", Toast.LENGTH_LONG).show()
                parentFragmentManager.popBackStack()
            } ?: run {
                Toast.makeText(requireContext(), "Please tap on the map to drop a pin", Toast.LENGTH_SHORT).show()
            }
        }
    }
}
