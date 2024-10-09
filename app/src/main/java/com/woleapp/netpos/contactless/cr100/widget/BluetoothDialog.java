package com.woleapp.netpos.contactless.cr100.widget;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AlertDialog;

import com.woleapp.netpos.contactless.R;

public class BluetoothDialog {
    public interface OnMyClickListener {
        void onCancel();

        void onConfirm();
    }

    /**
     * loading
     */
    public static Dialog loadingDialog;

    /*
     *Error message prompt box
     */
    public static AlertDialog ErrorDialog;



    public static AlertDialog manualExitDialog;

    public static void manualExitDialog(Activity mContext, String msg, OnMyClickListener listener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
        View view = View.inflate(mContext, R.layout.bluetooth_alert_dialog, null);
        View viewv = view.findViewById(R.id.view_v);
        viewv.setVisibility(View.VISIBLE);
        TextView mtvInfo = view.findViewById(R.id.tvInfo);
        mtvInfo.setText(msg);
        Button mbtnConfirm = view.findViewById(R.id.btnConfirm);
        Button mbtnCancel = view.findViewById(R.id.btnCancel);
        mbtnCancel.setVisibility(View.VISIBLE);
        mbtnConfirm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                listener.onConfirm();
            }
        });
        mbtnCancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                listener.onCancel();
            }
        });

        manualExitDialog = builder.create();
        if (!mContext.isFinishing()) {
            manualExitDialog.show();
        }
        Window window = manualExitDialog.getWindow();
        window.setBackgroundDrawable(null);
        window.setGravity(Gravity.BOTTOM);
        WindowManager wm = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        Display d = wm.getDefaultDisplay();
        WindowManager.LayoutParams p = manualExitDialog.getWindow().getAttributes();
        p.height = WindowManager.LayoutParams.WRAP_CONTENT;
        p.width = WindowManager.LayoutParams.MATCH_PARENT;
        manualExitDialog.getWindow().setAttributes(p);
        manualExitDialog.setCanceledOnTouchOutside(true);
        window.setContentView(view);
    }

    public static void loading(Activity mContext, String msg) {
        loadingDialog = new Dialog(mContext);
        loadingDialog.setContentView(R.layout.processing_dialog);
        Button confirmButton = loadingDialog.findViewById(R.id.confirmButton);
        TextView messageTextView = loadingDialog.findViewById(R.id.msgTextView);
        messageTextView.setText(msg);
        messageTextView.setTextSize(20);
        Window dialogWindow = loadingDialog.getWindow();
        WindowManager.LayoutParams lp = dialogWindow.getAttributes();
        loadingDialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_background);
        lp.dimAmount = 0.4f;
        dialogWindow.setAttributes(lp);
        loadingDialog.setCanceledOnTouchOutside(false);
//        Ldialog.setCancelable(false);
        if (!mContext.isFinishing()) {
            loadingDialog.show();
        }
    }
}
