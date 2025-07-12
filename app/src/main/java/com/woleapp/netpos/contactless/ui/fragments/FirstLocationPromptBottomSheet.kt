package com.woleapp.netpos.contactless.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import com.google.android.material.bottomsheet.BottomSheetDialogFragment
import com.woleapp.netpos.contactless.R

class FirstLocationPromptBottomSheet(
    private val onYes: () -> Unit,
    private val onNo: () -> Unit,
) : BottomSheetDialogFragment() {
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        val view = inflater.inflate(R.layout.bottom_sheet_location_prompt, container, false)

        view.findViewById<Button>(R.id.btn_yes).setOnClickListener {
            dismiss()
            onYes()
        }

        view.findViewById<Button>(R.id.btn_no).setOnClickListener {
            dismiss()
            onNo()
        }

        return view
    }
}
