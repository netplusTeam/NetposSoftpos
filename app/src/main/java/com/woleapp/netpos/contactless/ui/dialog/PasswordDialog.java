package com.woleapp.netpos.contactless.ui.dialog;

import static com.dspread.xpos.Util.HexStringToByteArray;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;

import com.danbamitale.epmslib.entities.KeyHolder;
import com.danbamitale.epmslib.entities.KeyHolderKt;
import com.danbamitale.epmslib.utils.TripleDES;
import com.dsofttech.dprefs.utils.DPrefs;
import com.dspread.xpos.QPOSService;
import com.dspread.xpos.Util;
import com.dspread.xpos.utils.AESUtil;
import com.hivemq.client.internal.util.ByteArray;
import com.woleapp.netpos.contactless.R;
import com.woleapp.netpos.contactless.app.NetPosApp;
import com.woleapp.netpos.contactless.util.ExtensionFunctionsKt;
import com.woleapp.netpos.contactless.util.Singletons;
import com.woleapp.netpos.contactless.util.UtilityParam;

import java.util.Arrays;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;
import java.util.Random;

import timber.log.Timber;

public class PasswordDialog {
    public static final int OfflinePin = 11;
    public static final int OnlineEncryptPin = 22;
    public static final int OfflineEncryptPin = 33;

    protected String DEFAULT_EXP_PIN_LEN_IND = "0,4,5,6,7,8,9,10,11,12";
    protected int DEFAULT_TIMEOUT_MS = 30000;

    private Handler handler;
    private int tpkIndex;
    private int icSlot;

    private boolean isEncryptCard;
    private int keyMode;
    private String pinCard;
    private boolean pinByPass;
    private int pinTryCnt;
    private int pinType;
    private byte[] pinIccRandomData;
    private byte[] pinModData;
    private byte[] pinExpData;

    private String title;
    private String message;


    private Dialog dialog;
    private TextView tvTitle, tvMessage;
    private EditText etPin;
    private Button btnConfirm;
    private ImageView btnClear;
    private TextView btnEsc, btn0, btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9;
    private Group groupKeyboard;
    private Listener pinListener;
    private String pan;


    public PasswordDialog(Activity context, String pan, Listener pinListener) {



        this.keyMode = keyMode;

        this.tpkIndex = tpkIndex;
        title = "Enter PIN";
        this.pinListener = pinListener;

        this.pan = pan;

        LayoutInflater inflater = LayoutInflater.from(context);
        ConstraintLayout view = (ConstraintLayout) inflater.inflate(R.layout.layout_password, null);
        tvTitle = view.findViewById(R.id.tvTitle);
        tvMessage = view.findViewById(R.id.tvMessage);
        etPin = view.findViewById(R.id.etPin);
        btnConfirm = view.findViewById(R.id.btnConfirm);
        btnClear = view.findViewById(R.id.btnClear);
        btnEsc = view.findViewById(R.id.btnEsc);
        btn0 = view.findViewById(R.id.btn0);
        btn1 = view.findViewById(R.id.btn1);
        btn2 = view.findViewById(R.id.btn2);
        btn3 = view.findViewById(R.id.btn3);
        btn4 = view.findViewById(R.id.btn4);
        btn5 = view.findViewById(R.id.btn5);
        btn6 = view.findViewById(R.id.btn6);
        btn7 = view.findViewById(R.id.btn7);
        btn8 = view.findViewById(R.id.btn8);
        btn9 = view.findViewById(R.id.btn9);
        groupKeyboard = view.findViewById(R.id.groupKeyboard);
        List<String> integerList = Arrays.asList("1", "2", "3", "4", "5", "6", "7", "8", "9", "0");
        Collections.shuffle(integerList);
        btn0.setText(integerList.get(0));
        btn1.setText(integerList.get(1));
        btn2.setText(integerList.get(2));
        btn3.setText(integerList.get(3));
        btn4.setText(integerList.get(4));
        btn5.setText(integerList.get(5));
        btn6.setText(integerList.get(6));
        btn7.setText(integerList.get(7));
        btn8.setText(integerList.get(8));
        btn9.setText(integerList.get(9));
        StringBuilder builder = new StringBuilder();
        TextView[] buttons = new TextView[]{btn0, btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9};
        for (int i = 0; i < buttons.length; i++) {
            buttons[i].setOnClickListener(v -> {
                if (etPin.getText().toString().length() >= 4) {
                    return;
                }
                builder.append(((TextView) v).getText().toString());
                etPin.setText(builder.toString());
            });
        }
        btnEsc.setOnClickListener(v -> {
            pinListener.onError("Cancelled");
            dialog.cancel();
        });
        btnClear.setOnClickListener(v -> {
            if (builder.length() > 0) {
                builder.deleteCharAt(builder.length() - 1);
                etPin.setText(builder.toString());
            }
        });
        btnConfirm.setOnClickListener(v -> {
            if (etPin.getText().toString().isEmpty()) {
                Toast.makeText(context, context.getString(R.string.please_enter_pin), Toast.LENGTH_SHORT).show();
                return;
            }
            if (etPin.getText().toString().length() < 4) {
                Toast.makeText(context, context.getString(R.string.pin_too_short), Toast.LENGTH_SHORT).show();
                return;
            }
            // Use DPrefs to save Pin key
            DPrefs.INSTANCE.putString(UtilityParam.INSTANCE.getPIN_KEY(), etPin.getText().toString().trim());

            if(Singletons.INSTANCE.getKeyHolder() != null) {
                pinListener.onConfirm(encodePinBlock(etPin.getText().toString(), pan));
            } else {
                Toast.makeText(context, "Terminal not configured", Toast.LENGTH_SHORT).show();
            }

            dialog.cancel();
        });

        tvTitle.setText(title);
        tvMessage.setText(message);
        dialog = new Dialog(context, android.R.style.Theme_Translucent_NoTitleBar);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        dialog.setContentView(view);
        Window window = dialog.getWindow();
        WindowManager.LayoutParams wlp = window.getAttributes();

        wlp.gravity = Gravity.CENTER;
        wlp.flags &= ~WindowManager.LayoutParams.FLAG_BLUR_BEHIND;
        window.setAttributes(wlp);
        dialog.getWindow().setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        window.setGravity(Gravity.BOTTOM);
    }

    private static String encodePinBlock(String pin, String pan) {
        Timber.e(pan);
        String pinP = "0" + pin.length() + pin + "FFFFFFFFFF";
        String cardNum;
        if(pan.length() > 16) {
            //for cards with 19 pan digits n make it fit into the standard 16-digit field expected by the format 0 PIN block structure.
            cardNum = "0000" + pan.substring(6, 18);
        }else{
            cardNum = "0000" + pan.substring(3, 15);
        }

        // System.out.println(Util.BytesToString(HexDump.hexStringToByteArray("0425A8EF8B7A6E66")));
        String pinblock = ExtensionFunctionsKt.xorHex(pinP, cardNum);
        //System.out.println(ExtensionFunctionsKt.xorHex(pin, cardNum));
        System.out.println(pinblock);
        //System.out.println(TripleDES.encrypt(pinblock, pinKey));
        KeyHolder keyHolder = Singletons.INSTANCE.getKeyHolder();
        return TripleDES.encrypt(pinblock, KeyHolderKt.getClearPinKey(keyHolder));
    }


    public void showDialog() {
        dialog.show();
    }

    private byte[] intToBytes(int value) {
        byte[] src = new byte[]{(byte) (value >> 24 & 255),
                (byte) (value >> 16 & 255), (byte) (value >> 8 & 255),
                (byte) (value & 255)};
        return src;
    }

    public static void shuffleArray(int[] array) {
        int index;
        Random random = new Random();
        for (int i = array.length - 1; i > 0; i--) {
            index = random.nextInt(i + 1);
            if (index != i) {
                array[index] ^= array[i];
                array[i] ^= array[index];
                array[index] ^= array[i];
            }
        }
    }




    public static String buildCvmPinBlock(Hashtable<String, String> value, String pin) {
        String randomData = value.get("RandomData") == null ? "" : value.get("RandomData");
        String pan = value.get("PAN") == null ? "" : value.get("PAN");
        String AESKey = value.get("AESKey") == null ? "" : value.get("AESKey");
        String isOnline = value.get("isOnlinePin") == null ? "" : value.get("isOnlinePin");
        String pinTryLimit = value.get("pinTryLimit") == null ? "" : value.get("pinTryLimit");
        //iso-format4 pinblock
        int pinLen = pin.length();
        pin = "4" + Integer.toHexString(pinLen) + pin;
        for (int i = 0; i < 14 - pinLen; i++) {
            pin = pin + "A";
        }
        pin += randomData.substring(0, 16);
        String panBlock = "";
        int panLen = pan.length();
        int m = 0;
        if (panLen < 12) {
            panBlock = "0";
            for (int i = 0; i < 12 - panLen; i++) {
                panBlock += "0";
            }
            panBlock = panBlock + pan + "0000000000000000000";
        } else {
            m = pan.length() - 12;
            panBlock = m + pan;
            for (int i = 0; i < 31 - panLen; i++) {
                panBlock += "0";
            }
        }
        String pinBlock1 = AESUtil.encrypt(AESKey, pin);
        pin = Util.xor16(HexStringToByteArray(pinBlock1), HexStringToByteArray(panBlock));
        String pinBlock2 = AESUtil.encrypt(AESKey, pin);
        return pinBlock2;
    }




    public interface Listener {

        void onConfirm(String pinBlock);

        void onError(String message);
    }






}