package com.woleapp.netpos.contactless.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.maps.model.MarkerOptions
import com.woleapp.netpos.contactless.R

class MapLocationPickerFragment : Fragment(), OnMapReadyCallback {
    private lateinit var map: GoogleMap
    private var selectedLatLng: LatLng? = null

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View? {
        val view = inflater.inflate(R.layout.fragment_map_location_picker, container, false)

        val mapFragment = childFragmentManager.findFragmentById(R.id.map) as SupportMapFragment
        mapFragment.getMapAsync(this)

        view.findViewById<Button>(R.id.btn_confirm_location).setOnClickListener {
            selectedLatLng?.let {
                Toast.makeText(requireContext(), "Selected: ${it.latitude}, ${it.longitude}", Toast.LENGTH_LONG).show()
                // handle selected location
            } ?: Toast.makeText(requireContext(), "Tap on map to select location", Toast.LENGTH_SHORT).show()
        }

        return view
    }

    override fun onMapReady(googleMap: GoogleMap) {
        map = googleMap
        map.setOnMapClickListener {
            selectedLatLng = it
            map.clear()
            map.addMarker(MarkerOptions().position(it).title("Selected Location"))
        }
    }
}
