package com.woleapp.netpos.contactless.cr100.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;

import com.woleapp.netpos.contactless.R;

import java.util.ArrayList;
import java.util.Map;

public class BluetoothAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    private final Context mContext;
    private ArrayList<Map<String, ?>> datas;

    private OnBluetoothItemClickListener mEvent;

    // MutableLiveData to hold the selected Bluetooth item
    private final MutableLiveData<Map<String, ?>> selectedBluetoothItem = new MutableLiveData<>();

    // Expose LiveData for observing selected Bluetooth item
    public LiveData<Map<String, ?>> getSelectedBluetoothItem() {
        return selectedBluetoothItem;
    }

    public BluetoothAdapter(Context context, ArrayList<Map<String, ?>> data) {
        this.mContext = context;
        this.datas = data;
    }


    public void setData(Map<String, ?> map) {
        if (datas != null) {
            this.datas.add(map);
        }
        notifyDataSetChanged();
    }

    public void setListData(ArrayList<Map<String, ?>> data) {
        this.datas = data;
        notifyDataSetChanged();
    }

    public void clearData() {
        if (datas != null) {
            datas.clear();
            datas = null;
        }
    }

    @NonNull
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = View.inflate(mContext, R.layout.bt_qpos_item, null);
        return new MyViewHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, @SuppressLint("RecyclerView") int position) {
        if (datas != null && datas.size() > 0) {
            if (holder instanceof MyViewHolder) {
                Map<String, ?> itemData = datas.get(position);
                int idIcon = (Integer) itemData.get("ICON");
                String sTitleName = (String) itemData.get("TITLE");

                ((MyViewHolder) holder).iconImage.setBackgroundResource(idIcon);
                ((MyViewHolder) holder).txt.setText(sTitleName);

                // Set click listener to capture item selection
                holder.itemView.setOnClickListener(v -> {
                    Log.w("BluetoothAdapter", "Item clicked: " + position);
                    selectedBluetoothItem.setValue(itemData);
                    if (mEvent != null) {
                        mEvent.onItemClick(position, itemData);
                    }
                });
            }
        }
    }

    @Override
    public int getItemCount() {
        return datas != null ? datas.size() : 0;
    }

    public interface OnBluetoothItemClickListener {
        void onItemClick(int position, Map<String, ?> itemData);
    }

    public void setOnBluetoothItemClickListener(OnBluetoothItemClickListener event) {
        this.mEvent = event;
    }

    public class MyViewHolder extends RecyclerView.ViewHolder {
        private ImageView iconImage;
        private TextView txt;

        public MyViewHolder(View v) {
            super(v);
            iconImage = v.findViewById(R.id.item_iv_icon);
            txt = v.findViewById(R.id.item_tv_lable);
        }
    }
}
