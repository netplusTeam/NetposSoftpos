.class public final Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
.super Lcom/woleapp/netpos/contactless/ui/activities/Hilt_MainActivity;
.source "MainActivity.kt"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/woleapp/netpos/contactless/ui/activities/MainActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1258:1\n75#2,13:1259\n75#2,13:1272\n75#2,13:1285\n75#2,13:1298\n75#2,13:1311\n75#2,13:1324\n1#3:1337\n766#4:1338\n857#4,2:1339\n766#4:1341\n857#4,2:1342\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/woleapp/netpos/contactless/ui/activities/MainActivity\n*L\n105#1:1259,13\n106#1:1272,13\n107#1:1285,13\n122#1:1298,13\n126#1:1311,13\n133#1:1324,13\n885#1:1338\n885#1:1339,2\n886#1:1341\n886#1:1342,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J$\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\u0008\u0008\u0002\u0010]\u001a\u00020^2\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010\u0013J\u0008\u0010`\u001a\u00020ZH\u0002J\u0008\u0010a\u001a\u00020ZH\u0002J\u0008\u0010b\u001a\u00020ZH\u0002J\u0008\u0010c\u001a\u00020ZH\u0002J\u0010\u0010d\u001a\u00020Z2\u0006\u0010e\u001a\u00020fH\u0002J\u0008\u0010g\u001a\u00020ZH\u0002J\'\u0010h\u001a\u00020Z2\u0006\u0010i\u001a\u00020\u00132\u0008\u0010j\u001a\u0004\u0018\u00010\u00082\u0006\u0010/\u001a\u000200H\u0002\u00a2\u0006\u0002\u0010kJ\u0008\u0010l\u001a\u00020ZH\u0002JB\u0010m\u001a\u00020Z2\n\u0008\u0002\u0010n\u001a\u0004\u0018\u00010o2\'\u0010p\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020s0r\u00a2\u0006\u000c\u0008t\u0012\u0008\u0008u\u0012\u0004\u0008\u0008(v\u0012\u0004\u0012\u00020Z0qH\u0002\u00a2\u0006\u0002\u0010wJ3\u0010x\u001a\u00020Z2\u0006\u0010y\u001a\u00020\u00182!\u0010z\u001a\u001d\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008t\u0012\u0008\u0008u\u0012\u0004\u0008\u0008({\u0012\u0004\u0012\u00020Z0qH\u0002J\u0008\u0010|\u001a\u00020ZH\u0002J\u0008\u0010}\u001a\u00020ZH\u0003J\u0011\u0010~\u001a\u00020Z2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0002J\t\u0010\u0081\u0001\u001a\u00020ZH\u0002J\u0013\u0010\u0082\u0001\u001a\u00020Z2\u0008\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0002J\t\u0010\u0085\u0001\u001a\u00020ZH\u0002J\t\u0010\u0086\u0001\u001a\u00020ZH\u0002J\t\u0010\u0087\u0001\u001a\u00020ZH\u0002J\u0015\u0010\u0088\u0001\u001a\u00020Z2\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u0001H\u0014J\u0014\u0010\u008b\u0001\u001a\u00020Z2\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010=H\u0014J\"\u0010\u008d\u0001\u001a\u00020Z2\u0007\u0010\u008e\u0001\u001a\u00020^2\u000e\u0010\u008f\u0001\u001a\t\u0012\u0004\u0012\u00020\u00130\u0090\u0001H\u0016J\"\u0010\u0091\u0001\u001a\u00020Z2\u0007\u0010\u008e\u0001\u001a\u00020^2\u000e\u0010\u008f\u0001\u001a\t\u0012\u0004\u0012\u00020\u00130\u0090\u0001H\u0016J4\u0010\u0092\u0001\u001a\u00020Z2\u0007\u0010\u008e\u0001\u001a\u00020^2\u0010\u0010\u0093\u0001\u001a\u000b\u0012\u0006\u0008\u0001\u0012\u00020\u00130\u0094\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0016\u00a2\u0006\u0003\u0010\u0097\u0001J\t\u0010\u0098\u0001\u001a\u00020ZH\u0014J\t\u0010\u0099\u0001\u001a\u00020ZH\u0014J\u0015\u0010\u009a\u0001\u001a\u00020Z2\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001H\u0016J\u0011\u0010\u009b\u0001\u001a\u00020Z2\u0006\u0010e\u001a\u00020fH\u0002J\u0012\u0010\u009c\u0001\u001a\u00020Z2\u0007\u0010\u008c\u0001\u001a\u00020=H\u0002J$\u0010\u009d\u0001\u001a\u00020Z2\u0007\u0010\u009e\u0001\u001a\u00020\u00132\u0007\u0010\u009f\u0001\u001a\u00020\u00132\u0007\u0010\u00a0\u0001\u001a\u00020\u0013H\u0002J\t\u0010\u00a1\u0001\u001a\u00020ZH\u0002J\t\u0010\u00a2\u0001\u001a\u00020ZH\u0002J\u0011\u0010\u00a3\u0001\u001a\u00020Z2\u0006\u0010/\u001a\u000200H\u0002J\t\u0010\u00a4\u0001\u001a\u00020ZH\u0002J\t\u0010\u00a5\u0001\u001a\u00020ZH\u0002J\u0017\u0010\u00a6\u0001\u001a\u00020Z2\u000c\u0010v\u001a\u0008\u0012\u0004\u0012\u00020s0rH\u0002J\u001b\u0010\u00a7\u0001\u001a\u00020Z2\u0007\u0010\u00a8\u0001\u001a\u00020\\2\u0007\u0010\u00a9\u0001\u001a\u00020\u0013H\u0002J\u0012\u0010\u00aa\u0001\u001a\u00020Z2\u0007\u0010\u00ab\u0001\u001a\u00020\u0013H\u0002J\t\u0010\u00ac\u0001\u001a\u00020ZH\u0002J\u0013\u0010\u00ad\u0001\u001a\u00020Z2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u0001H\u0002J\t\u0010\u00b0\u0001\u001a\u00020ZH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0011\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0011\u001a\u0004\u0008#\u0010 R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010;\u001a\u0008\u0012\u0004\u0012\u00020=0<X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010>\u001a\u00020?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008B\u0010\u0011\u001a\u0004\u0008@\u0010AR\u001b\u0010C\u001a\u00020D8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008G\u0010\u0011\u001a\u0004\u0008E\u0010FR\u001b\u0010H\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010\u0011\u001a\u0004\u0008J\u0010KR\u000e\u0010M\u001a\u00020NX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020PX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u0004\u0018\u00010RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010S\u001a\u00020T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010\u0011\u001a\u0004\u0008U\u0010VR\u000e\u0010X\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b1\u0001"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;",
        "Landroid/nfc/NfcAdapter$ReaderCallback;",
        "()V",
        "alertDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "amountToPayInDouble",
        "",
        "Ljava/lang/Double;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;",
        "contactlessKernel",
        "Lcom/visa/app/ttpkernel/ContactlessKernel;",
        "getContactlessKernel",
        "()Lcom/visa/app/ttpkernel/ContactlessKernel;",
        "contactlessKernel$delegate",
        "Lkotlin/Lazy;",
        "copyAccountNumber",
        "",
        "deviceNotSupportedAlertDialog",
        "dialogContactlessReaderBinding",
        "Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;",
        "firebaseInstance",
        "Lcom/google/firebase/messaging/FirebaseMessaging;",
        "mVerveTransactionViewModel",
        "Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;",
        "nfcAdapter",
        "Landroid/nfc/NfcAdapter;",
        "notificationModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "getNotificationModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "notificationModel$delegate",
        "notificationViewModel",
        "getNotificationViewModel",
        "notificationViewModel$delegate",
        "notificationsLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "pdfView",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "qrAmountDialog",
        "qrAmountDialogForVerveCard",
        "qrAmoutDialogBinding",
        "Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;",
        "qrData",
        "Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;",
        "qrPdfView",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;",
        "qrPinBlock",
        "Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;",
        "receiptAlertDialog",
        "receiptDialogBinding",
        "Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;",
        "receiptPdf",
        "Ljava/io/File;",
        "requestNarration",
        "resultLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "salesViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;",
        "getSalesViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;",
        "salesViewModel$delegate",
        "scanQrViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "getScanQrViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "scanQrViewModel$delegate",
        "transactionViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;",
        "getTransactionViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;",
        "transactionViewModel$delegate",
        "unreadNotificationsCountTv",
        "Landroid/widget/TextView;",
        "verveCardQrAmountDialogBinding",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;",
        "verveNfcListener",
        "Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "viewModel$delegate",
        "waitingDialog",
        "addFragmentWithoutRemove",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "containerViewId",
        "",
        "fragmentName",
        "checkTokenExpiry",
        "copyText",
        "dismissProgressDialogIfShowing",
        "downloadPdfImpl",
        "downloadPflImplForQrTransaction",
        "qrTransaction",
        "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
        "fetchUnreadNotifications",
        "formatPinAndSendToServer",
        "pin",
        "amountDouble",
        "(Ljava/lang/String;Ljava/lang/Double;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V",
        "generateMerchantDetails",
        "getEndOfDayTransactions",
        "timestamp",
        "",
        "actionToTake",
        "Lkotlin/Function1;",
        "",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "Lkotlin/ParameterName;",
        "name",
        "transactions",
        "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V",
        "getFireBaseToken",
        "firebaseMessagingInstance",
        "actionToPerformWithTheReceivedToken",
        "received",
        "getIntentDataSentInFromFirebaseService",
        "getLocationUpdates",
        "getPermissionAndCreatePdf",
        "view",
        "Landroidx/databinding/ViewDataBinding;",
        "handlePdfReceiptPrinting",
        "handleProvider",
        "tag",
        "Landroid/nfc/Tag;",
        "initViews",
        "logout",
        "logoutConfirmation",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "onPermissionsDenied",
        "requestCode",
        "perms",
        "",
        "onPermissionsGranted",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onStart",
        "onTagDiscovered",
        "printQrTransactionUtil",
        "resolveIntent",
        "sendTokenToBackend",
        "token",
        "terminalId",
        "username",
        "setUpObserversForVerveTransaction",
        "setUpViewModelForVerve",
        "showAmountDialog",
        "showAmountDialogForVerveCard",
        "showCalendarDialog",
        "showEndOfDayBottomSheetDialog",
        "showFragment",
        "targetFragment",
        "className",
        "showPinDialog",
        "pan",
        "showSelectAccountTypeDialog",
        "startNfcPayment",
        "nfcDataWrapper",
        "Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;",
        "stopNfcPayment",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private amountToPayInDouble:Ljava/lang/Double;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

.field private final contactlessKernel$delegate:Lkotlin/Lazy;

.field private copyAccountNumber:Ljava/lang/String;

.field private deviceNotSupportedAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private dialogContactlessReaderBinding:Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;

.field private firebaseInstance:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private mVerveTransactionViewModel:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private final notificationModel$delegate:Lkotlin/Lazy;

.field private final notificationViewModel$delegate:Lkotlin/Lazy;

.field private notificationsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private pdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

.field private qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

.field private qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

.field private qrData:Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

.field private qrPdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

.field private final qrPinBlock:Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;

.field private receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

.field private receiptPdf:Ljava/io/File;

.field private requestNarration:Ljava/lang/String;

.field private resultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final salesViewModel$delegate:Lkotlin/Lazy;

.field private final scanQrViewModel$delegate:Lkotlin/Lazy;

.field private final transactionViewModel$delegate:Lkotlin/Lazy;

.field private unreadNotificationsCountTv:Landroid/widget/TextView;

.field private verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

.field private verveNfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private waitingDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$0S0whX4-qM2rDvoSy7K0swkdgBY(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onResume$lambda-48(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0jzzi--5Xr5TCnHJ9ohqdzKSLDE(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->printQrTransactionUtil$lambda-60$lambda-59(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1Dx5otXYH8JvpiiBSdzCEhGFbCQ(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->handlePdfReceiptPrinting$lambda-90$lambda-89$lambda-81$lambda-80(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3JfB0yxHXHwrkYrpOmwIYKNmv4I(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-35$lambda-34$lambda-32(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5OA3ODMf-M6H3XhHmw5otc3g30Y(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-27(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6D0JgUDzTwD63luh6tFIGX1IP-w(Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getFireBaseToken$lambda-96(Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7WMvLAYq8Epckssf6c2eW2uKOxg(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->printQrTransactionUtil$lambda-58$lambda-57(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8WHRgX86s_1QNYnDBOSTUZdF-mM(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-20$lambda-18(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BV7mP5oWAz6rM5nfvV-T0EAl-og(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-31(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CGEH2SpFYcKqv0Xuk4ghYH0KB3U(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-37(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CYFG3HEUdvpv1wOqN7aX0YWcYy0(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-47(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D9JdI-E08BwyfR8UTv72Mg14Oi0(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-23(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EUb70hw3kC_dva-0ku1wiBMsuj0(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-11(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EgMc8q6Z2S6Ol0xo4Vp--o7xw-4(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->handlePdfReceiptPrinting$lambda-90$lambda-89$lambda-87$lambda-86(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FmRRNkBFF_E4yLI-8855Kl4v2zM(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->printQrTransactionUtil$lambda-62$lambda-61(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OZLpXLzQX1bARJl3k22SWz9tzm4(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showEndOfDayBottomSheetDialog$lambda-75(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PCDMGSlNXZx12v12gFH_qFNztvg(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->printQrTransactionUtil$lambda-64$lambda-63(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RlRJCjKLwZcoS1rXMmnmkbUfY7Q(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->handlePdfReceiptPrinting$lambda-90$lambda-89$lambda-85$lambda-84(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJMB77gSR5NXXsG1-egyI4nRo8o(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-25(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T69jQlKS6QuEYgQ1nOzVYnLa3uo(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-35$lambda-34$lambda-33(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFmT8Ee6Mvh3N0cxpYhG0rDiCKs(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-17(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLps88Chzvlrw7jRR7SDM22rg3w(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showSelectAccountTypeDialog$lambda-53(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YPS7LJ0nZJ9pDvPA23DQuhFl0oA(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showCalendarDialog$lambda-67(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ypr1w1idUIj0jix--e-H_pEsUVI(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->handlePdfReceiptPrinting$lambda-90(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZSHwePtlvGhMcFidvvcUNUeSB5Y(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/nfc/Tag;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->startNfcPayment$lambda-1(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/nfc/Tag;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_8y3mE8UbPDdaoA1MSYDXlLvDjk(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-29(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_IaTQaDJTp56NqLY-J31kgLvJpU(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-21(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$asZuFckoJ0yhZOJHbq6ReNWj-MU(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showAmountDialog$lambda-78(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$atTQDGlTDi9V9kuaYYJFnmXP2ok(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-44(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDKdg28lWW1jujrTOkbt53ObKyc(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->setUpObserversForVerveTransaction$lambda-100(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cRXZLFdJ9amS0xPSf5crFSn3rlI(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-20$lambda-19(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$d-5ynUl07QxRavC2z4jqCd4YXvg(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-45(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gOV2PVyslsm89WEnhOynDTAP3lM(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getEndOfDayTransactions$lambda-68(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hQdUhHgrV-iZXVSiSijylF09LJ8(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->logoutConfirmation$lambda-4(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kJnvJCW6EKNGIpWFswMn9aaYKdk(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showAmountDialogForVerveCard$lambda-79(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kVpYtdj8t7Sq3q0QAPOXOvOyuJo(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-39(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mGqV_AqWPZFlOToXlsYqbZeDRUw(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showEndOfDayBottomSheetDialog$lambda-76(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ouBdeXnf_3g1aNwzNGNQdfP4zso(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-38(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rlSup1DHoDsezWWiP4EUdpiX8YM(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->handlePdfReceiptPrinting$lambda-90$lambda-89$lambda-83$lambda-82(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sEmZbTNRhzPh8CEEbQeRrC3YtaA(Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showEndOfDayBottomSheetDialog$lambda-73$lambda-72(Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uB9ajGVMcOdVcIOk5jryzWD2V9k(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->fetchUnreadNotifications$lambda-94(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uGf-EGot_Y6zjLI67Mapml402Y8(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate$lambda-14(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wpxGoPhGmmm0GhObohaexs5WEk0(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showSelectAccountTypeDialog$lambda-54(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4lYp0C3NZzQvTPm_adDA2lZgOE(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/nfc/Tag;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onTagDiscovered$lambda-56$lambda-55(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/nfc/Tag;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBuGA7uFL_sR9f6YWRtcnX7rHTc(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onStart$lambda-0(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->_$_findViewCache:Ljava/util/Map;

    .line 90
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_MainActivity;-><init>()V

    .line 105
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 1259
    .local v0, "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    nop

    .line 1260
    const/4 v1, 0x0

    .line 1259
    .local v1, "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 1261
    const/4 v2, 0x0

    .line 1259
    .local v2, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 1263
    .local v3, "$i$f$viewModels":I
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1267
    .local v4, "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    const-class v6, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1269
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1270
    nop

    .line 1271
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$3;

    invoke-direct {v8, v1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1267
    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/Lazy;

    .line 105
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    .end local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels":I
    .end local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 106
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 1272
    .restart local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    nop

    .line 1273
    const/4 v1, 0x0

    .line 1272
    .restart local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 1274
    const/4 v2, 0x0

    .line 1272
    .restart local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 1276
    .restart local v3    # "$i$f$viewModels":I
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1280
    .restart local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    const-class v6, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1282
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1283
    nop

    .line 1284
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v8, v1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1280
    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/Lazy;

    .line 106
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    .end local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels":I
    .end local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->transactionViewModel$delegate:Lkotlin/Lazy;

    .line 107
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 1285
    .restart local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    nop

    .line 1286
    const/4 v1, 0x0

    .line 1285
    .restart local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 1287
    const/4 v2, 0x0

    .line 1285
    .restart local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 1289
    .restart local v3    # "$i$f$viewModels":I
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$7;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1293
    .restart local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    const-class v6, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1295
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$8;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1296
    nop

    .line 1297
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$9;

    invoke-direct {v8, v1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1293
    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/Lazy;

    .line 107
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    .end local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels":I
    .end local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->notificationViewModel$delegate:Lkotlin/Lazy;

    .line 108
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$contactlessKernel$2;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$contactlessKernel$2;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->contactlessKernel$delegate:Lkotlin/Lazy;

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 1298
    .restart local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    nop

    .line 1299
    const/4 v1, 0x0

    .line 1298
    .restart local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 1300
    const/4 v2, 0x0

    .line 1298
    .restart local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 1302
    .restart local v3    # "$i$f$viewModels":I
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$10;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$10;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1306
    .restart local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    const-class v6, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1308
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$11;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$11;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1309
    nop

    .line 1310
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$12;

    invoke-direct {v8, v1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1306
    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/Lazy;

    .line 122
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    .end local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels":I
    .end local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->scanQrViewModel$delegate:Lkotlin/Lazy;

    .line 123
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrPinBlock:Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;

    .line 124
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->amountToPayInDouble:Ljava/lang/Double;

    .line 126
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 1311
    .restart local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    nop

    .line 1312
    const/4 v1, 0x0

    .line 1311
    .restart local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 1313
    const/4 v2, 0x0

    .line 1311
    .restart local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 1315
    .restart local v3    # "$i$f$viewModels":I
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$13;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$13;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1319
    .restart local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    const-class v6, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1321
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$14;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$14;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1322
    nop

    .line 1323
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$15;

    invoke-direct {v8, v1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$15;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1319
    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/Lazy;

    .line 126
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    .end local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels":I
    .end local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->notificationModel$delegate:Lkotlin/Lazy;

    .line 133
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 1324
    .restart local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    nop

    .line 1325
    const/4 v1, 0x0

    .line 1324
    .restart local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 1326
    const/4 v2, 0x0

    .line 1324
    .restart local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 1328
    .restart local v3    # "$i$f$viewModels":I
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$16;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$16;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 1332
    .restart local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    const-class v6, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1334
    new-instance v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$17;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$17;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1335
    nop

    .line 1336
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$18;

    invoke-direct {v8, v1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$special$$inlined$viewModels$default$18;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1332
    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/Lazy;

    .line 133
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/activity/ComponentActivity;
    .end local v1    # "extrasProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels":I
    .end local v4    # "factoryPromise$iv":Lkotlin/jvm/functions/Function0;
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->salesViewModel$delegate:Lkotlin/Lazy;

    .line 89
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 87
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    return-object v0
.end method

.method public static final synthetic access$getDeviceNotSupportedAlertDialog$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 87
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->deviceNotSupportedAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public static final synthetic access$getScanQrViewModel(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 87
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTransactionViewModel(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 87
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getTransactionViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 87
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$sendTokenToBackend(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "terminalId"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->sendTokenToBackend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setCopyAccountNumber$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->copyAccountNumber:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setReceiptPdf$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "<set-?>"    # Ljava/io/File;

    .line 87
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$showCalendarDialog(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 87
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showCalendarDialog()V

    return-void
.end method

.method public static final synthetic access$showEndOfDayBottomSheetDialog(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "transactions"    # Ljava/util/List;

    .line 87
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showEndOfDayBottomSheetDialog(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showFragment(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "targetFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "className"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1109
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1111
    const p2, 0x7f0a00e8

    .line 1109
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1112
    const/4 p3, 0x0

    .line 1109
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->addFragmentWithoutRemove(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return-void
.end method

.method private final checkTokenExpiry()V
    .locals 4

    .line 253
    const-string v0, "user_token"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 255
    .local v2, "$i$a$-let-MainActivity$checkTokenExpiry$1":I
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/util/JWTHelper;->isExpired(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->logout()V

    .line 258
    :cond_0
    nop

    .line 254
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-MainActivity$checkTokenExpiry$1":I
    nop

    .line 259
    :cond_1
    return-void
.end method

.method private final copyText()V
    .locals 5

    .line 1221
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1222
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    const-string v1, "Text copied"

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->copyAccountNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "copyAccountNumber"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1223
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1224
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-string v3, "Account number copied"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1225
    return-void
.end method

.method private final dismissProgressDialogIfShowing()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 263
    :cond_0
    return-void
.end method

.method private final downloadPdfImpl()V
    .locals 44

    .line 1070
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getLastPosTransactionResponse()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    if-eqz v2, :cond_5

    .local v2, "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v1, 0x0

    .line 1071
    .local v1, "$i$a$-let-MainActivity$downloadPdfImpl$1":I
    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTVR()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "IS_QR_TRANSACTION"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v15, 0x0

    invoke-static {v3, v4, v5, v6, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1073
    sget-object v14, Lcom/woleapp/netpos/contactless/util/Mappers;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Mappers;

    .line 1072
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v42, v14

    move-object/from16 v14, v16

    move-object/from16 v43, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTVR()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x0

    const-string v24, "IS_QR_TRANSACTION"

    const-string v25, ""

    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const v40, -0x40001

    const/16 v41, 0x0

    invoke-static/range {v2 .. v41}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->copy$default(Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JLjava/lang/String;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v3

    .line 1073
    move-object/from16 v4, v42

    invoke-virtual {v4, v3}, Lcom/woleapp/netpos/contactless/util/Mappers;->mapTransactionResponseToQrTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v3

    .line 1072
    nop

    .line 1075
    .local v3, "qrTransaction":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    iget-object v15, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrPdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    const-string v4, "qrPdfView"

    if-nez v15, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v15, v43

    :cond_0
    check-cast v15, Landroidx/databinding/ViewDataBinding;

    .line 1076
    nop

    .line 1074
    invoke-static {v15, v3}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->initViewsForPdfLayout(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;)V

    .line 1078
    iget-object v15, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrPdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    if-nez v15, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v15, v43

    :cond_1
    check-cast v15, Landroidx/databinding/ViewDataBinding;

    invoke-direct {v0, v15}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getPermissionAndCreatePdf(Landroidx/databinding/ViewDataBinding;)V

    .end local v3    # "qrTransaction":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    goto :goto_0

    .line 1081
    :cond_2
    move-object/from16 v43, v15

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->pdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    const-string v3, "pdfView"

    if-nez v15, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v15, v43

    :cond_3
    check-cast v15, Landroidx/databinding/ViewDataBinding;

    .line 1082
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getLastPosTransactionResponse()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1080
    invoke-static {v15, v4}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->initViewsForPdfLayout(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;)V

    .line 1084
    iget-object v15, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->pdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    if-nez v15, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v15, v43

    :cond_4
    check-cast v15, Landroidx/databinding/ViewDataBinding;

    invoke-direct {v0, v15}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getPermissionAndCreatePdf(Landroidx/databinding/ViewDataBinding;)V

    .line 1086
    :goto_0
    nop

    .line 1070
    .end local v1    # "$i$a$-let-MainActivity$downloadPdfImpl$1":I
    .end local v2    # "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    nop

    .line 1087
    :cond_5
    return-void
.end method

.method private final downloadPflImplForQrTransaction(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V
    .locals 3
    .param p1, "qrTransaction"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 762
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrPdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    const/4 v1, 0x0

    const-string v2, "qrPdfView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    .line 763
    nop

    .line 761
    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->initViewsForPdfLayout(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrPdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Landroidx/databinding/ViewDataBinding;

    invoke-direct {p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getPermissionAndCreatePdf(Landroidx/databinding/ViewDataBinding;)V

    .line 766
    return-void
.end method

.method private final fetchUnreadNotifications()V
    .locals 3

    .line 1097
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getNotificationViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->getUnreadNotifications()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda27;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1107
    return-void
.end method

.method private static final fetchUnreadNotifications$lambda-94(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "unreadMessages"    # Ljava/util/List;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    if-eqz p1, :cond_4

    move-object v0, p1

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1099
    .local v1, "$i$a$-let-MainActivity$fetchUnreadNotifications$1$1":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "notificationsLayout"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1100
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->notificationsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_2

    .line 1102
    :cond_1
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->unreadNotificationsCountTv:Landroid/widget/TextView;

    if-nez v2, :cond_2

    const-string v2, "unreadNotificationsCountTv"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->notificationsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1105
    :goto_2
    nop

    .line 1098
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-MainActivity$fetchUnreadNotifications$1$1":I
    nop

    .line 1106
    :cond_4
    return-void
.end method

.method private final formatPinAndSendToServer(Ljava/lang/String;Ljava/lang/Double;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V
    .locals 29
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "amountDouble"    # Ljava/lang/Double;
    .param p3, "qrData"    # Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    .line 1161
    move-object/from16 v0, p0

    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->stringToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1162
    .local v1, "formattedPadding":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1163
    if-eqz p2, :cond_2

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    .local v15, "it":D
    const/4 v3, 0x0

    .line 1164
    .local v3, "$i$a$-let-MainActivity$formatPinAndSendToServer$1":I
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "qrAmountDialogForVerveCard"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_0
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 1165
    new-instance v17, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    .line 1166
    nop

    .line 1167
    invoke-virtual/range {p3 .. p3}, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;->getData()Ljava/lang/String;

    move-result-object v7

    .line 1165
    const/4 v8, 0x0

    .line 1168
    sget-object v4, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MERCHANT_ID()Ljava/lang/String;

    move-result-object v9

    .line 1165
    const/4 v10, 0x0

    .line 1169
    nop

    .line 1170
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->requestNarration:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "requestNarration"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v5

    goto :goto_0

    :cond_1
    move-object v12, v4

    .line 1165
    :goto_0
    const/16 v13, 0x14

    const/4 v14, 0x0

    move-object/from16 v4, v17

    move-wide v5, v15

    move-object v11, v1

    invoke-direct/range {v4 .. v14}, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1172
    .local v4, "qrDataToSendToBackend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->setScannedQrIsVerveCard(Z)V

    .line 1173
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v5

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget-object v6, Lcom/woleapp/netpos/contactless/util/AppConstants;->INSTANCE:Lcom/woleapp/netpos/contactless/util/AppConstants;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/util/AppConstants;->getGUID()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x6f

    const/16 v28, 0x0

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v28}, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;->copy$default(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->saveTheQrToSharedPrefs(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V

    .line 1174
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->postScannedQrRequestToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V

    .line 1175
    sget-object v6, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    .line 1176
    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    .line 1177
    move-object v8, v0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    .line 1178
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getSendQrToServerResponseVerve()Landroidx/lifecycle/LiveData;

    move-result-object v9

    .line 1179
    new-instance v10, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    invoke-direct {v10}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;-><init>()V

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v11

    const-string v5, "supportFragmentManager"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$formatPinAndSendToServer$1$1;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$formatPinAndSendToServer$1$1;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v6 .. v12}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponseActivity(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 1186
    nop

    .line 1188
    .end local v3    # "$i$a$-let-MainActivity$formatPinAndSendToServer$1":I
    .end local v4    # "qrDataToSendToBackend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    .end local v15    # "it":D
    :cond_2
    return-void
.end method

.method private final generateMerchantDetails()V
    .locals 7

    .line 1228
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    .line 1229
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 1230
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 1231
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getPayByTransfer()Landroidx/lifecycle/LiveData;

    move-result-object v3

    .line 1232
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    invoke-direct {v4}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;-><init>()V

    .line 1233
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    const-string v6, "supportFragmentManager"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    new-instance v6, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$generateMerchantDetails$1;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$generateMerchantDetails$1;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v0 .. v6}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponseActivity(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 1242
    return-void
.end method

.method private final getContactlessKernel()Lcom/visa/app/ttpkernel/ContactlessKernel;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->contactlessKernel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-contactlessKernel>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/visa/app/ttpkernel/ContactlessKernel;

    return-object v0
.end method

.method private final getEndOfDayTransactions(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "actionToTake"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 871
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f13017c

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 873
    sget-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v1

    .line 874
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/DateUtilKt;->getBeginningOfDay(Ljava/lang/Long;)J

    move-result-wide v2

    .line 875
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/DateUtilKt;->getEndOfDayTimeStamp(Ljava/lang/Long;)J

    move-result-wide v4

    .line 876
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v6

    .line 873
    invoke-interface/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->getEndOfDayTransaction(JJLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 872
    nop

    .line 878
    .local v0, "livedata":Landroidx/lifecycle/LiveData;
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, p2, v0, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 882
    return-void
.end method

.method static synthetic getEndOfDayTransactions$default(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 867
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 868
    const/4 p1, 0x0

    .line 867
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getEndOfDayTransactions(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final getEndOfDayTransactions$lambda-68(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;)V
    .locals 1
    .param p0, "$actionToTake"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$livedata"    # Landroidx/lifecycle/LiveData;
    .param p2, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p3, "it"    # Ljava/util/List;

    const-string v0, "$actionToTake"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$livedata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 881
    return-void
.end method

.method private final getFireBaseToken(Lcom/google/firebase/messaging/FirebaseMessaging;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "firebaseMessagingInstance"    # Lcom/google/firebase/messaging/FirebaseMessaging;
    .param p2, "actionToPerformWithTheReceivedToken"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/FirebaseMessaging;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1144
    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda28;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 1154
    return-void
.end method

.method private static final getFireBaseToken$lambda-96(Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p0, "$actionToPerformWithTheReceivedToken"    # Lkotlin/jvm/functions/Function1;
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    const-string v0, "$actionToPerformWithTheReceivedToken"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    return-void

    .line 1150
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1151
    .local v0, "token":Ljava/lang/String;
    const-string v1, "token"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    return-void
.end method

.method private final getIntentDataSentInFromFirebaseService()V
    .locals 7

    .line 1191
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .local v0, "intentAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1192
    .local v1, "$i$a$-let-MainActivity$getIntentDataSentInFromFirebaseService$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "TAG_NOTIFICATION_RECEIVED_2"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1193
    nop

    .local v2, "intentExtra":Z
    const/4 v3, 0x0

    .line 1194
    .local v3, "$i$a$-let-MainActivity$getIntentDataSentInFromFirebaseService$1$1":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v4, "com.woleapp.netpos.FIREBASE_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1195
    if-eqz v2, :cond_4

    .line 1196
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v5, 0x0

    const-string v6, "receiptAlertDialog"

    if-nez v4, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_1
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1197
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v4, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 1199
    :cond_3
    sget-object v4, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v4

    .line 1200
    .local v4, "currentDateTime":Ljava/lang/String;
    nop

    .line 1201
    sget-object v5, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    .line 1202
    nop

    .line 1203
    nop

    .line 1201
    const-string v6, "yyyy-MM-dd hh:mm a"

    invoke-virtual {v5, v4, v6}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->dateStr2Long(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1200
    new-instance v6, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getIntentDataSentInFromFirebaseService$1$1$1;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getIntentDataSentInFromFirebaseService$1$1$1;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v5, v6}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getEndOfDayTransactions(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 1216
    .end local v4    # "currentDateTime":Ljava/lang/String;
    :cond_4
    :goto_1
    nop

    .line 1193
    .end local v2    # "intentExtra":Z
    .end local v3    # "$i$a$-let-MainActivity$getIntentDataSentInFromFirebaseService$1$1":I
    nop

    .line 1217
    nop

    .line 1191
    .end local v0    # "intentAction":Ljava/lang/String;
    .end local v1    # "$i$a$-let-MainActivity$getIntentDataSentInFromFirebaseService$1":I
    :cond_5
    nop

    .line 1218
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x379276a2
        :pswitch_0
    .end packed-switch
.end method

.method private final getLocationUpdates()V
    .locals 8

    .line 638
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/location/LocationManager;

    .line 639
    .local v0, "locationManager":Landroid/location/LocationManager;
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getLocationUpdates$locationListener$1;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getLocationUpdates$locationListener$1;-><init>()V

    check-cast v1, Landroid/location/LocationListener;

    .line 662
    .local v1, "locationListener":Landroid/location/LocationListener;
    nop

    .line 663
    nop

    .line 664
    nop

    .line 665
    nop

    .line 666
    nop

    .line 662
    const-string v3, "gps"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 668
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 669
    return-void
.end method

.method private final getNotificationModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->notificationModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    return-object v0
.end method

.method private final getNotificationViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->notificationViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    return-object v0
.end method

.method private final getPermissionAndCreatePdf(Landroidx/databinding/ViewDataBinding;)V
    .locals 6
    .param p1, "view"    # Landroidx/databinding/ViewDataBinding;

    .line 750
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 751
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 752
    nop

    .line 753
    nop

    .line 754
    const v2, 0x7f1301c6

    invoke-virtual {p0, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getString(R.string.stora\u2026n_rationale_for_download)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getPermissionAndCreatePdf$1;

    invoke-direct {v2, p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getPermissionAndCreatePdf$1;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/databinding/ViewDataBinding;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x71

    invoke-static/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/util/AppUtilsKt;->genericPermissionHandler(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 758
    return-void
.end method

.method private final getSalesViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->salesViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    return-object v0
.end method

.method private final getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->scanQrViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    return-object v0
.end method

.method private final getTransactionViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->transactionViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    return-object v0
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    return-object v0
.end method

.method private final handlePdfReceiptPrinting()V
    .locals 3

    .line 984
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getShowPrintDialog()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda38;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1067
    return-void
.end method

.method private static final handlePdfReceiptPrinting$lambda-90(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 13
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .local v0, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 986
    .local v7, "$i$a$-let-MainActivity$handlePdfReceiptPrinting$1$1":I
    const-string v1, "pref_printer_settings"

    const-string v2, "nothing_is_there"

    invoke-static {v1, v2}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "receiptAlertDialog"

    const-string v8, "receiptDialogBinding"

    const/4 v9, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "binding"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v4, "download"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v1, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_1
    check-cast v1, Landroidx/databinding/ViewDataBinding;

    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1, v4}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    .line 989
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    .local v1, "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d81":Landroidx/appcompat/app/AlertDialog;
    :cond_2
    const/4 v3, 0x0

    .line 990
    .local v3, "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$1":I
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v4, :cond_3

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    :cond_3
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    const v5, 0x7f13009c

    invoke-virtual {p0, v5}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v4, :cond_4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    :cond_4
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephoneWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 992
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v2, :cond_5

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v9

    :cond_5
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 994
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v2, :cond_6

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v9, v2

    :goto_0
    iget-object v2, v9, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda40;

    invoke-direct {v4, p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda40;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    nop

    .line 989
    .end local v1    # "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d81":Landroidx/appcompat/app/AlertDialog;
    .end local v3    # "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$1":I
    goto/16 :goto_5

    .line 986
    :sswitch_1
    const-string v4, "send_sms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_3

    .line 1004
    :cond_7
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v1, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_8
    check-cast v1, Landroidx/databinding/ViewDataBinding;

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    .line 1005
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    .local v1, "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d83":Landroidx/appcompat/app/AlertDialog;
    :cond_9
    const/4 v2, 0x0

    .line 1006
    .local v2, "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_a

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v9

    :cond_a
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1008
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_b

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v9, v3

    :goto_1
    iget-object v3, v9, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda41;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda41;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    nop

    .line 1005
    .end local v1    # "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d83":Landroidx/appcompat/app/AlertDialog;
    .end local v2    # "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$2":I
    goto/16 :goto_5

    .line 986
    :sswitch_2
    const-string v4, "share"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_3

    .line 1027
    :cond_c
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v1, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_d
    check-cast v1, Landroidx/databinding/ViewDataBinding;

    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1, v4}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    .line 1028
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    .local v1, "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d85":Landroidx/appcompat/app/AlertDialog;
    :cond_e
    const/4 v3, 0x0

    .line 1029
    .local v3, "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$3":I
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v4, :cond_f

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    :cond_f
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    const v5, 0x7f1301be

    invoke-virtual {p0, v5}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v4, :cond_10

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v9

    :cond_10
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephoneWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1031
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v2, :cond_11

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v9

    :cond_11
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1033
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v2, :cond_12

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    move-object v9, v2

    :goto_2
    iget-object v2, v9, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda42;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda42;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    nop

    .line 1028
    .end local v1    # "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d85":Landroidx/appcompat/app/AlertDialog;
    .end local v3    # "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$3":I
    goto/16 :goto_5

    .line 1040
    :cond_13
    :goto_3
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_14

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_14
    move-object v10, v1

    .local v10, "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d87":Landroidx/appcompat/app/AlertDialog;
    const/4 v11, 0x0

    .line 1041
    .local v11, "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$4":I
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_15

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_15
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    .line 1042
    const v3, 0x7f13009d

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1041
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_16

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_16
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephoneWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1044
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_17

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_17
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "Card Owner: CUSTOMER"

    const-string v3, ""

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    invoke-virtual {v10}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1047
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_18

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_18
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda43;

    invoke-direct {v2, v10, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda43;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    nop

    .line 1040
    .end local v10    # "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d87":Landroidx/appcompat/app/AlertDialog;
    .end local v11    # "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$4":I
    nop

    .line 1059
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_19

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_19
    move-object v9, v1

    :goto_4
    move-object v1, v9

    .local v1, "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d88":Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    const/4 v2, 0x0

    .line 1060
    .local v2, "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$5":I
    iget-object v3, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->progress:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1061
    iget-object v3, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1062
    nop

    .line 1059
    .end local v1    # "$this$handlePdfReceiptPrinting_u24lambda_u2d90_u24lambda_u2d89_u24lambda_u2d88":Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    .end local v2    # "$i$a$-apply-MainActivity$handlePdfReceiptPrinting$1$1$5":I
    nop

    .line 1065
    :goto_5
    nop

    .line 985
    .end local v0    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-let-MainActivity$handlePdfReceiptPrinting$1$1":I
    nop

    .line 1066
    :cond_1a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6854fdf -> :sswitch_2
        0x4a5fb822 -> :sswitch_1
        0x551ac888 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final handlePdfReceiptPrinting$lambda-90$lambda-89$lambda-81$lambda-80(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "$this_apply"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->downloadPdfImpl()V

    .line 996
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 997
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    const-string v3, "binding.root"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    const v3, 0x7f1300b9

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.fileDownloaded)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method private static final handlePdfReceiptPrinting$lambda-90$lambda-89$lambda-83$lambda-82(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    const/4 v1, 0x0

    const-string v2, "receiptDialogBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1

    .line 1011
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 1012
    const v1, 0x7f1300aa

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1013
    const/4 v2, 0x1

    .line 1010
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1015
    return-void

    .line 1017
    :cond_1
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    .line 1018
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1019
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-virtual {v0, v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->sendSmS(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1023
    return-void
.end method

.method private static final handlePdfReceiptPrinting$lambda-90$lambda-89$lambda-85$lambda-84(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->downloadPdfImpl()V

    .line 1035
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "receiptPdf"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->sharePdf(Ljava/io/File;Landroidx/lifecycle/LifecycleOwner;)V

    .line 1036
    return-void
.end method

.method private static final handlePdfReceiptPrinting$lambda-90$lambda-89$lambda-87$lambda-86(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 6
    .param p0, "$this_apply"    # Landroidx/appcompat/app/AlertDialog;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 1049
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 1050
    invoke-direct {p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->downloadPdfImpl()V

    .line 1051
    iget-object v0, p1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->pdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "pdfView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v2}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    .line 1052
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 1053
    iget-object v3, p1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v3, :cond_1

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    const-string v4, "binding.root"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    const v4, 0x7f1300b9

    invoke-virtual {p1, v4}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.fileDownloaded)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v0, v2, v3, v4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    if-nez v0, :cond_2

    const-string v0, "receiptPdf"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1, v0}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->sharePdf(Ljava/io/File;Landroidx/lifecycle/LifecycleOwner;)V

    .line 1057
    return-void
.end method

.method private final handleProvider(Landroid/nfc/Tag;)V
    .locals 8
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 218
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v6

    .line 219
    .local v6, "mTagCom":Landroid/nfc/tech/IsoDep;
    nop

    .line 220
    :try_start_0
    invoke-virtual {v6}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v1, "logger":Ljava/lang/StringBuilder;
    new-instance v7, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;-><init>(Ljava/lang/StringBuilder;Landroid/nfc/tech/IsoDep;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v7

    .line 223
    .local v0, "nfcTransReceiver":Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v2

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getContactlessKernel()Lcom/visa/app/ttpkernel/ContactlessKernel;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->doVisaTransaction(Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;Lcom/visa/app/ttpkernel/ContactlessKernel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "nfcTransReceiver":Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;
    .end local v1    # "logger":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final initViews()V
    .locals 4

    .line 1090
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$this$initViews_u24lambda_u2d92":Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;
    :cond_0
    const/4 v1, 0x0

    .line 1091
    .local v1, "$i$a$-with-MainActivity$initViews$1":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->notification:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "dashboardHeader.notification"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->notificationsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1092
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->unreadNotifications:Landroid/widget/TextView;

    const-string v3, "dashboardHeader.unreadNotifications"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->unreadNotificationsCountTv:Landroid/widget/TextView;

    .line 1093
    nop

    .line 1090
    .end local v0    # "$this$initViews_u24lambda_u2d92":Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;
    .end local v1    # "$i$a$-with-MainActivity$initViews$1":I
    nop

    .line 1094
    return-void
.end method

.method private final logout()V
    .locals 3

    .line 239
    const-string v0, "user_token"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 240
    const-string v0, "authenticated"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 241
    const-string v0, "pref_keyholder"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 242
    const-string v0, "pref_config_data"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 243
    const-string v0, "user"

    invoke-static {v0}, Lcom/pixplicity/easyprefs/library/Prefs;->remove(Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disconnect()V

    .line 245
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 247
    nop

    .line 246
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 249
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->finish()V

    .line 250
    return-void
.end method

.method private final logoutConfirmation()V
    .locals 3

    .line 230
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    const v1, 0x7f1300e4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda21;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 236
    return-void
.end method

.method private static final logoutConfirmation$lambda-4(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->logout()V

    .line 234
    return-void
.end method

.method private static final onCreate$lambda-11(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    const-string p1, "STRING_QR_READ_RESULT_BUNDLE_KEY"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrData:Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    .line 351
    if-eqz p1, :cond_1

    .local p1, "it":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    const/4 v0, 0x0

    .line 352
    .local v0, "$i$a$-let-MainActivity$onCreate$5$1":I
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;->getCard_scheme()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 353
    const-string v2, "verve"

    check-cast v2, Ljava/lang/CharSequence;

    .line 354
    const/4 v3, 0x1

    .line 352
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showAmountDialogForVerveCard()V

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showAmountDialog(Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V

    .line 361
    :goto_0
    nop

    .line 351
    .end local v0    # "$i$a$-let-MainActivity$onCreate$5$1":I
    .end local p1    # "it":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    nop

    .line 362
    :cond_1
    return-void
.end method

.method private static final onCreate$lambda-14(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    const-string p1, "PIN_BLOCK_BK"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    .local p1, "pinFromPinBlockDialog":Ljava/lang/String;
    if-eqz p1, :cond_1

    move-object v0, p1

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 370
    .local v1, "$i$a$-let-MainActivity$onCreate$6$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrData:Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    if-eqz v2, :cond_0

    .line 1337
    .local v2, "it1":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    const/4 v3, 0x0

    .line 370
    .local v3, "$i$a$-let-MainActivity$onCreate$6$1$1":I
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->amountToPayInDouble:Ljava/lang/Double;

    invoke-direct {p0, v0, v4, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->formatPinAndSendToServer(Ljava/lang/String;Ljava/lang/Double;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V

    .line 371
    .end local v2    # "it1":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    .end local v3    # "$i$a$-let-MainActivity$onCreate$6$1$1":I
    :cond_0
    nop

    .line 369
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-MainActivity$onCreate$6$1":I
    nop

    .line 372
    :cond_1
    return-void
.end method

.method private static final onCreate$lambda-17(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 10
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 377
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    .line 378
    .local v0, "data":Landroid/content/Intent;
    if-eqz v0, :cond_1

    move-object v2, v0

    .local v2, "it":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 379
    .local v3, "$i$a$-let-MainActivity$onCreate$7$1":I
    const-string v4, "RESULT_CODE_TEXT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 380
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "text":Ljava/lang/String;
    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    .line 383
    const v6, 0x7f13018f

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 384
    nop

    .line 381
    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 386
    if-eqz v4, :cond_0

    move-object v1, v4

    .local v1, "qrCardData":Ljava/lang/String;
    const/4 v5, 0x0

    .line 388
    .local v5, "$i$a$-let-MainActivity$onCreate$7$1$1":I
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v7, Lcom/woleapp/netpos/contactless/model/QrCardReadResultModel;

    invoke-virtual {v6, v1, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/woleapp/netpos/contactless/model/QrCardReadResultModel;

    .line 387
    nop

    .line 390
    .local v6, "qrReadResult":Lcom/woleapp/netpos/contactless/model/QrCardReadResultModel;
    new-instance v7, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/QrCardReadResultModel;->getData()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v7, v9, v8}, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    nop

    .line 392
    .local v7, "scannedData":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    nop

    .line 394
    .end local v1    # "qrCardData":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "$i$a$-let-MainActivity$onCreate$7$1$1":I
    .end local v6    # "qrReadResult":Lcom/woleapp/netpos/contactless/model/QrCardReadResultModel;
    .end local v7    # "scannedData":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    :cond_0
    nop

    .line 378
    .end local v2    # "it":Landroid/content/Intent;
    .end local v3    # "$i$a$-let-MainActivity$onCreate$7$1":I
    goto :goto_0

    .end local v0    # "data":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 396
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v2, "scan failed"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    :goto_0
    return-void
.end method

.method private static final onCreate$lambda-20$lambda-18(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    sget-object p2, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->init$default(Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;Landroid/content/Context;ZILjava/lang/Object;)V

    .line 404
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 405
    return-void
.end method

.method private static final onCreate$lambda-20$lambda-19(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Configuration cancelled"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 408
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 409
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 410
    return-void
.end method

.method private static final onCreate$lambda-21(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->logoutConfirmation()V

    .line 451
    return-void
.end method

.method private static final onCreate$lambda-23(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;

    if-eqz v0, :cond_3

    .local v0, "it":Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;
    const/4 v1, 0x0

    .line 458
    .local v1, "$i$a$-let-MainActivity$onCreate$11$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;->getCardType()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    move-result-object v2

    sget-object v3, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VISA:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;->getCardType()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    move-result-object v2

    sget-object v3, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VERVE:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;->getCardType()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    move-result-object v2

    sget-object v3, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->MASTERCARD:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    if-ne v2, v3, :cond_1

    .line 459
    :cond_0
    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->startNfcPayment(Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;)V

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;->getEnable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;->getCardType()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    move-result-object v2

    if-nez v2, :cond_2

    .line 462
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->stopNfcPayment()V

    .line 464
    :cond_2
    :goto_0
    nop

    .line 457
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;
    .end local v1    # "$i$a$-let-MainActivity$onCreate$11$1":I
    nop

    .line 465
    :cond_3
    return-void
.end method

.method private static final onCreate$lambda-25(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 468
    .local v1, "$i$a$-let-MainActivity$onCreate$12$1":I
    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showSelectAccountTypeDialog()V

    .line 471
    :cond_0
    nop

    .line 467
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-MainActivity$onCreate$12$1":I
    nop

    .line 472
    :cond_1
    return-void
.end method

.method private static final onCreate$lambda-27(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 475
    .local v1, "$i$a$-let-MainActivity$onCreate$13$1":I
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "show pin dialog"

    invoke-static {v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showPinDialog(Ljava/lang/String;)V

    .line 477
    nop

    .line 474
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-MainActivity$onCreate$13$1":I
    nop

    .line 478
    :cond_0
    return-void
.end method

.method private static final onCreate$lambda-29(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 11
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    .line 480
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    const-string v1, "waitingDialog"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .local v0, "it":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    const/4 v3, 0x0

    .line 481
    .local v3, "$i$a$-let-MainActivity$onCreate$14$1":I
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->dialogContactlessReaderBinding:Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;

    const-string v5, "dialogContactlessReaderBinding"

    if-nez v4, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_0
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;->contactlessHeader:Landroid/widget/TextView;

    .line 482
    const v6, 0x7f13015a

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->getCardScheme()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {p0, v6, v8}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 481
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->dialogContactlessReaderBinding:Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;

    if-nez v4, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;->contactlessHeader:Landroid/widget/TextView;

    const-string v6, "dialogContactlessReaderBinding.contactlessHeader"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    sget-object v8, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->MASTERCARD:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->getCardScheme()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    .line 485
    sget-object v8, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VISA:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->getCardScheme()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 484
    const/4 v7, 0x2

    .line 486
    sget-object v8, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VERVE:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->getCardScheme()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 484
    nop

    .line 483
    invoke-static {v4, v6}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->highlightTexts(Landroid/widget/TextView;[Ljava/lang/String;)V

    .line 488
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->dialogContactlessReaderBinding:Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;

    if-nez v4, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;->cardScheme:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->getIcon()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 489
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->waitingDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v4, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 490
    return-void

    .line 492
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    .end local v3    # "$i$a$-let-MainActivity$onCreate$14$1":I
    :cond_4
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->waitingDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    invoke-static {v2}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->dismissIfShowing(Landroidx/appcompat/app/AlertDialog;)V

    .line 493
    return-void
.end method

.method private static final onCreate$lambda-31(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 8
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 496
    .local v1, "$i$a$-let-MainActivity$onCreate$15$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    const-string v3, "receiptDialogBinding"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->progress:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 497
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    const-string v2, "receiptAlertDialog"

    if-eqz v0, :cond_5

    .line 499
    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    const-string v7, "Sent Receipt"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 500
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_2
    iget-object v3, v5, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 501
    :cond_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v4, v3

    :goto_0
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_2

    .line 504
    :cond_5
    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    .line 505
    const v7, 0x7f1300b1

    invoke-virtual {p0, v7}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 506
    nop

    .line 503
    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 507
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 508
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v5, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_6
    iget-object v3, v5, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 509
    :cond_7
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v3, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v4, v3

    :goto_1
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 511
    :goto_2
    nop

    .line 495
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-MainActivity$onCreate$15$1":I
    nop

    .line 512
    :cond_9
    return-void
.end method

.method private static final onCreate$lambda-35$lambda-34$lambda-32(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "receiptDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    const-string v0, "receiptAlertDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 519
    return-void
.end method

.method private static final onCreate$lambda-35$lambda-34$lambda-33(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "$this_apply"    # Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    const/4 v1, 0x0

    const-string v2, "receiptDialogBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1

    .line 523
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 524
    const-string v1, "Please enter a valid phone number"

    check-cast v1, Ljava/lang/CharSequence;

    .line 525
    const/4 v2, 0x1

    .line 522
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 527
    return-void

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    .line 530
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v4

    :goto_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v0, v3, v1}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->sendSmS(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 534
    iget-object v0, p1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    return-void
.end method

.method private static final onCreate$lambda-37(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 541
    .local v1, "$i$a$-let-MainActivity$onCreate$17$1":I
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 542
    .local v2, "qrTransaction":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    const-string v3, "qrTransaction"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->printQrTransactionUtil(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    .line 543
    nop

    .line 540
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-MainActivity$onCreate$17$1":I
    .end local v2    # "qrTransaction":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    nop

    .line 544
    :cond_0
    return-void
.end method

.method private static final onCreate$lambda-38(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/content/DialogInterface;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->stopNfcReader()V

    .line 548
    return-void
.end method

.method private static final onCreate$lambda-39(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .param p0, "task"    # Lcom/google/android/gms/tasks/Task;

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    return-void

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 557
    .local v0, "token":Ljava/lang/String;
    return-void
.end method

.method private static final onCreate$lambda-44(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;

    .line 582
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 584
    return-void
.end method

.method private static final onCreate$lambda-45(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->copyText()V

    .line 594
    return-void
.end method

.method private static final onCreate$lambda-47(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 601
    .local v1, "$i$a$-let-MainActivity$onCreate$27$1":I
    const/4 v2, 0x0

    const-string v3, "mVerveTransactionViewModel"

    if-eqz v0, :cond_1

    .line 602
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->mVerveTransactionViewModel:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

    if-nez v4, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->startTransaction(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_2

    .line 604
    :cond_1
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->mVerveTransactionViewModel:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->cancelTransaction()V

    .line 606
    :goto_2
    nop

    .line 600
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-MainActivity$onCreate$27$1":I
    nop

    .line 607
    :cond_3
    return-void
.end method

.method private static final onResume$lambda-48(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v1, 0x7f130164

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.notification)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method private static final onStart$lambda-0(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    nop

    .line 157
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.NFC_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    nop

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    return-void
.end method

.method private static final onTagDiscovered$lambda-56$lambda-55(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/nfc/Tag;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "$tag"    # Landroid/nfc/Tag;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->handleProvider(Landroid/nfc/Tag;)V

    .line 742
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    .line 743
    :cond_0
    return-void
.end method

.method private final printQrTransactionUtil(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V
    .locals 7
    .param p1, "qrTransaction"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 769
    const-string v0, "pref_printer_settings"

    const-string v1, "nothing_is_there"

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "receiptAlertDialog"

    const-string v3, "binding"

    const-string v4, "receiptDialogBinding"

    const/4 v5, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "download"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_1
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v3}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    .line 772
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .local v0, "$this$printQrTransactionUtil_u24lambda_u2d58":Landroidx/appcompat/app/AlertDialog;
    :cond_2
    const/4 v2, 0x0

    .line 773
    .local v2, "$i$a$-apply-MainActivity$printQrTransactionUtil$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_3
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    const v6, 0x7f13009c

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_4
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephoneWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 775
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_5
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    .line 776
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSTextForQrTransaction(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 775
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 778
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v5, v1

    :goto_0
    iget-object v1, v5, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0, p1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda29;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    nop

    .line 772
    .end local v0    # "$this$printQrTransactionUtil_u24lambda_u2d58":Landroidx/appcompat/app/AlertDialog;
    .end local v2    # "$i$a$-apply-MainActivity$printQrTransactionUtil$1":I
    goto/16 :goto_5

    .line 769
    :sswitch_1
    const-string v6, "send_sms"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_3

    .line 802
    :cond_7
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_8
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    .line 803
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .local v0, "$this$printQrTransactionUtil_u24lambda_u2d62":Landroidx/appcompat/app/AlertDialog;
    :cond_9
    const/4 v1, 0x0

    .line 804
    .local v1, "$i$a$-apply-MainActivity$printQrTransactionUtil$3":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v2, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_a
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    .line 805
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSTextForQrTransaction(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 804
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 807
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v2, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v5, v2

    :goto_1
    iget-object v2, v5, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda31;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    nop

    .line 803
    .end local v0    # "$this$printQrTransactionUtil_u24lambda_u2d62":Landroidx/appcompat/app/AlertDialog;
    .end local v1    # "$i$a$-apply-MainActivity$printQrTransactionUtil$3":I
    goto/16 :goto_5

    .line 769
    :sswitch_2
    const-string v6, "share"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_3

    .line 788
    :cond_c
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v0, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_d
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v3}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    .line 789
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .local v0, "$this$printQrTransactionUtil_u24lambda_u2d60":Landroidx/appcompat/app/AlertDialog;
    :cond_e
    const/4 v2, 0x0

    .line 790
    .local v2, "$i$a$-apply-MainActivity$printQrTransactionUtil$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_f
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    const v6, 0x7f1301be

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_10

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_10
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephoneWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 792
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_11

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_11
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    .line 793
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSTextForQrTransaction(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 792
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 795
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_12

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    move-object v5, v1

    :goto_2
    iget-object v1, v5, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v3, p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda30;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    nop

    .line 789
    .end local v0    # "$this$printQrTransactionUtil_u24lambda_u2d60":Landroidx/appcompat/app/AlertDialog;
    .end local v2    # "$i$a$-apply-MainActivity$printQrTransactionUtil$2":I
    goto/16 :goto_5

    .line 826
    :cond_13
    :goto_3
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v0, :cond_14

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_14
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v3}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    .line 827
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_15

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .local v0, "$this$printQrTransactionUtil_u24lambda_u2d64":Landroidx/appcompat/app/AlertDialog;
    :cond_15
    const/4 v2, 0x0

    .line 828
    .local v2, "$i$a$-apply-MainActivity$printQrTransactionUtil$4":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_16

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_16
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    const v6, 0x7f13009d

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_17

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_17
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephoneWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 830
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_18

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_18
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    .line 831
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/PrintExtKt;->buildSMSTextForQrTransaction(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 830
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 833
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v1, :cond_19

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_19
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, p1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda32;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    nop

    .line 827
    .end local v0    # "$this$printQrTransactionUtil_u24lambda_u2d64":Landroidx/appcompat/app/AlertDialog;
    .end local v2    # "$i$a$-apply-MainActivity$printQrTransactionUtil$4":I
    nop

    .line 842
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v0, :cond_1a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_1a
    move-object v5, v0

    :goto_4
    move-object v0, v5

    .local v0, "$this$printQrTransactionUtil_u24lambda_u2d65":Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    const/4 v1, 0x0

    .line 843
    .local v1, "$i$a$-apply-MainActivity$printQrTransactionUtil$5":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 844
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 845
    nop

    .line 842
    .end local v0    # "$this$printQrTransactionUtil_u24lambda_u2d65":Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    .end local v1    # "$i$a$-apply-MainActivity$printQrTransactionUtil$5":I
    nop

    .line 848
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6854fdf -> :sswitch_2
        0x4a5fb822 -> :sswitch_1
        0x551ac888 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final printQrTransactionUtil$lambda-58$lambda-57(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "$qrTransaction"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .param p2, "$this_apply"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$qrTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->downloadPflImplForQrTransaction(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    .line 780
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v1, p2

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 781
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    const-string v3, "binding.root"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    const v3, 0x7f1300b9

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.fileDownloaded)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method private static final printQrTransactionUtil$lambda-60$lambda-59(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "$qrTransaction"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$qrTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->downloadPflImplForQrTransaction(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    .line 797
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "receiptPdf"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->sharePdf(Ljava/io/File;Landroidx/lifecycle/LifecycleOwner;)V

    .line 798
    return-void
.end method

.method private static final printQrTransactionUtil$lambda-62$lambda-61(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    const/4 v1, 0x0

    const-string v2, "receiptDialogBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1

    .line 810
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 811
    const v1, 0x7f1300aa

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 812
    const/4 v2, 0x1

    .line 809
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 814
    return-void

    .line 816
    :cond_1
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    .line 817
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 818
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 816
    invoke-virtual {v0, v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->sendSmS(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 822
    return-void
.end method

.method private static final printQrTransactionUtil$lambda-64$lambda-63(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "$qrTransaction"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .param p2, "$this_apply"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$qrTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->downloadPflImplForQrTransaction(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    .line 835
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v1, p2

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 836
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    const-string v4, "binding.root"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    const v4, 0x7f1300b9

    invoke-virtual {p0, v4}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.fileDownloaded)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0, v1, v2, v4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptPdf:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "receiptPdf"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v3, v0}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->sharePdf(Ljava/io/File;Landroidx/lifecycle/LifecycleOwner;)V

    .line 840
    return-void
.end method

.method private final resolveIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 209
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/nfc/Tag;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/nfc/Tag;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 210
    .local v0, "tag":Landroid/nfc/Tag;
    :goto_0
    if-eqz v0, :cond_3

    move-object v1, v0

    .local v1, "it":Landroid/nfc/Tag;
    const/4 v2, 0x0

    .line 211
    .local v2, "$i$a$-let-MainActivity$resolveIntent$1":I
    invoke-virtual {v1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcA]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcB]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    :cond_1
    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->handleProvider(Landroid/nfc/Tag;)V

    .line 214
    :cond_2
    nop

    .line 210
    .end local v1    # "it":Landroid/nfc/Tag;
    .end local v2    # "$i$a$-let-MainActivity$resolveIntent$1":I
    nop

    .line 215
    :cond_3
    return-void
.end method

.method private final sendTokenToBackend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "terminalId"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;

    .line 1132
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/AppUtilsKt;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getNotificationModel()Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->registerDeviceToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "Please connect to the internet and relaunch"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1138
    :goto_0
    return-void
.end method

.method private final setUpObserversForVerveTransaction()V
    .locals 3

    .line 1252
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->mVerveTransactionViewModel:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

    if-nez v0, :cond_0

    const-string v0, "mVerveTransactionViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->getOnTransactionFinishedEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 1253
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda35;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1256
    return-void
.end method

.method private static final setUpObserversForVerveTransaction$lambda-100(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "transactionFullDataDto"    # Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionFullDataDto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->doVerveCardTransaction(Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;)V

    .line 1255
    return-void
.end method

.method private final setUpViewModelForVerve()V
    .locals 6

    .line 1245
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSalesViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->setupTransactionForVerveSDK()Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    move-result-object v0

    .line 1246
    .local v0, "transactionParameters":Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 1247
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 1248
    new-instance v3, Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "applicationContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveNfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, v0}, Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;-><init>(Landroid/content/Context;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;)V

    check-cast v3, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 1246
    invoke-direct {v1, v2, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v2, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->mVerveTransactionViewModel:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

    .line 1250
    return-void
.end method

.method private final showAmountDialog(Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V
    .locals 2
    .param p1, "qrData"    # Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    .line 929
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "qrAmountDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 930
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v0, :cond_1

    const-string v0, "qrAmoutDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->proceed:Landroid/widget/Button;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda23;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    return-void
.end method

.method private static final showAmountDialog$lambda-78(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;Landroid/view/View;)V
    .locals 20
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "$qrData"    # Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    .param p2, "it"    # Landroid/view/View;

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$qrData"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    const-string v3, "qrAmoutDialogBinding"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 932
    .local v1, "amountDouble":Ljava/lang/Double;
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_1
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_5

    .line 933
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v5, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_4
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    const v7, 0x7f130033

    invoke-virtual {v0, v7}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    .line 935
    :cond_5
    if-eqz v1, :cond_b

    move-object v5, v1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    .local v18, "it":D
    const/4 v5, 0x0

    .line 936
    .local v5, "$i$a$-let-MainActivity$showAmountDialog$1$1":I
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v7, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v4

    :cond_6
    iget-object v3, v7, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 937
    :cond_7
    iget-object v3, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v3, :cond_8

    const-string v3, "qrAmountDialog"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_8
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 944
    new-instance v3, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    .line 945
    nop

    .line 946
    invoke-virtual/range {p1 .. p1}, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;->getData()Ljava/lang/String;

    move-result-object v10

    .line 944
    const/4 v11, 0x0

    .line 947
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/User;->getNetplusPayMid()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    goto :goto_2

    :cond_9
    move-object v12, v4

    :goto_2
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 944
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 948
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->requestNarration:Ljava/lang/String;

    if-nez v7, :cond_a

    const-string v7, "requestNarration"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v15, v4

    goto :goto_3

    :cond_a
    move-object v15, v7

    .line 944
    :goto_3
    const/16 v16, 0x34

    const/16 v17, 0x0

    move-object v7, v3

    move-wide/from16 v8, v18

    invoke-direct/range {v7 .. v17}, Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 950
    .local v3, "qrDataToSendToBackend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->setScannedQrIsVerveCard(Z)V

    .line 951
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->postScannedQrRequestToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V

    .line 952
    sget-object v6, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    .line 953
    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    .line 954
    move-object v8, v0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    .line 955
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getSendQrToServerResponse()Landroidx/lifecycle/LiveData;

    move-result-object v9

    .line 956
    new-instance v10, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    invoke-direct {v10}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;-><init>()V

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v11

    const-string v4, "supportFragmentManager"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showAmountDialog$1$1$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showAmountDialog$1$1$1;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v6 .. v12}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponseActivity(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 963
    nop

    .line 935
    .end local v3    # "qrDataToSendToBackend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    .end local v5    # "$i$a$-let-MainActivity$showAmountDialog$1$1":I
    .end local v18    # "it":D
    nop

    .line 964
    :cond_b
    return-void
.end method

.method private final showAmountDialogForVerveCard()V
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "qrAmountDialogForVerveCard"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 969
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v0, :cond_1

    const-string v0, "verveCardQrAmountDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->proceed:Landroid/widget/Button;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda39;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    return-void
.end method

.method private static final showAmountDialogForVerveCard$lambda-79(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    const-string v1, "verveCardQrAmountDialogBinding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 971
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    const v3, 0x7f130033

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    .line 974
    :cond_4
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 973
    nop

    .line 975
    .local v0, "amountDouble":Ljava/lang/Double;
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->amountToPayInDouble:Ljava/lang/Double;

    .line 976
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    iget-object v1, v3, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 977
    :cond_7
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    const-string v3, "qrAmountDialogForVerveCard"

    if-nez v1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_8
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 978
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v2, v1

    :goto_2
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 979
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrPinBlock:Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "STRING_PIN_BLOCK_DIALOG_TAG"

    invoke-virtual {v1, v2, v3}, Lcom/woleapp/netpos/contactless/ui/dialog/QrPasswordPinBlockDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method private final showCalendarDialog()V
    .locals 8

    .line 851
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 852
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v7, Landroid/app/DatePickerDialog;

    .line 853
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 864
    new-instance v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda37;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda37;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    .line 861
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 862
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 863
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 852
    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 864
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->show()V

    .line 865
    return-void
.end method

.method private static final showCalendarDialog$lambda-67(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/widget/DatePicker;III)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    nop

    .line 856
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1337
    move-object v0, p1

    .local v0, "$this$showCalendarDialog_u24lambda_u2d67_u24lambda_u2d66":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 856
    .local v1, "$i$a$-apply-MainActivity$showCalendarDialog$1$1":I
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .end local v0    # "$this$showCalendarDialog_u24lambda_u2d67_u24lambda_u2d66":Ljava/util/Calendar;
    .end local v1    # "$i$a$-apply-MainActivity$showCalendarDialog$1$1":I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 855
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showCalendarDialog$1$2;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showCalendarDialog$1$2;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getEndOfDayTransactions(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 860
    return-void
.end method

.method private final showEndOfDayBottomSheetDialog(Ljava/util/List;)V
    .locals 15
    .param p1, "transactions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;)V"
        }
    .end annotation

    .line 885
    move-object v6, p0

    move-object/from16 v7, p1

    move-object v0, v7

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1338
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1339
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "00"

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .local v10, "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v11, 0x0

    .line 885
    .local v11, "$i$a$-filter-MainActivity$showEndOfDayBottomSheetDialog$approvedList$1":I
    invoke-virtual {v10}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .end local v10    # "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v11    # "$i$a$-filter-MainActivity$showEndOfDayBottomSheetDialog$approvedList$1":I
    if-eqz v9, :cond_0

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1340
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 1338
    nop

    .line 885
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    nop

    .line 886
    .local v2, "approvedList":Ljava/util/List;
    move-object v0, v7

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1341
    .restart local v1    # "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1342
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v10

    check-cast v12, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .local v12, "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v13, 0x0

    .line 886
    .local v13, "$i$a$-filter-MainActivity$showEndOfDayBottomSheetDialog$declinedList$1":I
    invoke-virtual {v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .end local v12    # "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v13    # "$i$a$-filter-MainActivity$showEndOfDayBottomSheetDialog$declinedList$1":I
    xor-int/2addr v11, v14

    if-eqz v11, :cond_2

    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1343
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 1341
    nop

    .line 886
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    nop

    .line 887
    .local v3, "declinedList":Ljava/util/List;
    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v1, v8}, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;

    move-result-object v0

    const-string v1, "inflate(LayoutInflater.from(this), null, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    .line 888
    .local v9, "endOfDay":Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    move-object v10, v9

    .local v10, "$this$showEndOfDayBottomSheetDialog_u24lambda_u2d73":Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    const/4 v12, 0x0

    .line 889
    .local v12, "$i$a$-apply-MainActivity$showEndOfDayBottomSheetDialog$1":I
    iget-object v0, v10, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->approvedCount:Landroid/widget/TextView;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, v10, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->declinedCount:Landroid/widget/TextView;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v0, v10, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->totalTransactions:Landroid/widget/TextView;

    .line 892
    const v1, 0x7f1301d2

    new-array v4, v11, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v1, v4}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 891
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v13, v10, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->print:Landroid/widget/Button;

    new-instance v14, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object v1, v10

    move-object/from16 v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    nop

    .line 888
    .end local v10    # "$this$showEndOfDayBottomSheetDialog_u24lambda_u2d73":Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    .end local v12    # "$i$a$-apply-MainActivity$showEndOfDayBottomSheetDialog$1":I
    nop

    .line 909
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-object v1, v6

    check-cast v1, Landroid/content/Context;

    const v4, 0x7f1401b4

    invoke-direct {v0, v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    move-object v1, v0

    .local v1, "$this$showEndOfDayBottomSheetDialog_u24lambda_u2d74":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    const/4 v4, 0x0

    .line 910
    .local v4, "$i$a$-apply-MainActivity$showEndOfDayBottomSheetDialog$bottomSheet$1":I
    invoke-virtual {v1, v11}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setDismissWithAnimation(Z)V

    .line 911
    invoke-virtual {v1, v8}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 912
    invoke-virtual {v9}, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 913
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 914
    nop

    .line 909
    .end local v1    # "$this$showEndOfDayBottomSheetDialog_u24lambda_u2d74":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .end local v4    # "$i$a$-apply-MainActivity$showEndOfDayBottomSheetDialog$bottomSheet$1":I
    nop

    .line 915
    .local v0, "bottomSheet":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    iget-object v1, v9, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->view:Landroid/widget/Button;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v7, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    iget-object v1, v9, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->closeButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    return-void
.end method

.method private static final showEndOfDayBottomSheetDialog$lambda-73$lambda-72(Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 5
    .param p0, "$this_apply"    # Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    .param p1, "$approvedList"    # Ljava/util/List;
    .param p2, "$declinedList"    # Ljava/util/List;
    .param p3, "$transactions"    # Ljava/util/List;
    .param p4, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p5, "it"    # Landroid/view/View;

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$approvedList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$declinedList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transactions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 897
    move-object v0, p3

    goto :goto_0

    .line 896
    :pswitch_0
    move-object v0, p2

    goto :goto_0

    .line 895
    :pswitch_1
    move-object v0, p1

    .line 898
    :goto_0
    nop

    .local v0, "$this$showEndOfDayBottomSheetDialog_u24lambda_u2d73_u24lambda_u2d72_u24lambda_u2d71":Ljava/util/List;
    const/4 v1, 0x0

    .line 899
    .local v1, "$i$a$-apply-MainActivity$showEndOfDayBottomSheetDialog$1$1$1":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    move-object v2, p4

    check-cast v2, Landroid/content/Context;

    .line 902
    const v3, 0x7f130162

    invoke-virtual {p4, v3}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 903
    const/4 v4, 0x0

    .line 900
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 904
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 906
    :cond_0
    nop

    .line 898
    .end local v0    # "$this$showEndOfDayBottomSheetDialog_u24lambda_u2d73_u24lambda_u2d72_u24lambda_u2d71":Ljava/util/List;
    .end local v1    # "$i$a$-apply-MainActivity$showEndOfDayBottomSheetDialog$1$1$1":I
    nop

    .line 907
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0267
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final showEndOfDayBottomSheetDialog$lambda-75(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "$transactions"    # Ljava/util/List;
    .param p2, "$bottomSheet"    # Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .param p3, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bottomSheet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getTransactionViewModel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setEndOfDayList(Ljava/util/List;)V

    .line 917
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 918
    nop

    .line 919
    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;

    const-string v1, "End Of Day"

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 920
    nop

    .line 918
    const-string v1, "Transaction History"

    invoke-direct {p0, v0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method private static final showEndOfDayBottomSheetDialog$lambda-76(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1
    .param p0, "$bottomSheet"    # Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "$bottomSheet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 925
    return-void
.end method

.method private final showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .param p1, "targetFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "className"    # Ljava/lang/String;

    .line 689
    nop

    .line 690
    :try_start_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .local v0, "$this$showFragment_u24lambda_u2d49":Landroidx/fragment/app/FragmentTransaction;
    const/4 v1, 0x0

    .line 691
    .local v1, "$i$a$-apply-MainActivity$showFragment$1":I
    const v2, 0x7f0a00e8

    invoke-virtual {v0, v2, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 692
    const v2, 0x7f01002f

    const v3, 0x10a0001

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 693
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    nop

    .line 690
    .end local v0    # "$this$showFragment_u24lambda_u2d49":Landroidx/fragment/app/FragmentTransaction;
    .end local v1    # "$i$a$-apply-MainActivity$showFragment$1":I
    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final showPinDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "pan"    # Ljava/lang/String;

    .line 672
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;

    .line 673
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 674
    nop

    .line 675
    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showPinDialog$1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showPinDialog$1;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    check-cast v2, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;

    .line 672
    invoke-direct {v0, v1, p1, v2}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;)V

    .line 685
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->showDialog()V

    .line 686
    return-void
.end method

.method private final showSelectAccountTypeDialog()V
    .locals 8

    .line 701
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 702
    .local v0, "dialogSelectAccountTypeBinding":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .local v2, "$this$showSelectAccountTypeDialog_u24lambda_u2d51":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v3, 0x0

    .line 703
    .local v3, "$i$a$-apply-MainActivity$showSelectAccountTypeDialog$dialog$1":I
    nop

    .line 704
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 705
    nop

    .line 706
    nop

    .line 703
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    move-result-object v4

    const-string v5, "inflate(\n               \u2026     false,\n            )"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    move-object v5, v4

    .local v5, "$this$showSelectAccountTypeDialog_u24lambda_u2d51_u24lambda_u2d50":Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
    const/4 v7, 0x0

    .line 708
    .local v7, "$i$a$-apply-MainActivity$showSelectAccountTypeDialog$dialog$1$1":I
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->executePendingBindings()V

    .line 709
    nop

    .line 707
    .end local v5    # "$this$showSelectAccountTypeDialog_u24lambda_u2d51_u24lambda_u2d50":Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
    .end local v7    # "$i$a$-apply-MainActivity$showSelectAccountTypeDialog$dialog$1$1":I
    nop

    .line 703
    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 710
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 711
    invoke-virtual {v2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 712
    nop

    .line 702
    .end local v2    # "$this$showSelectAccountTypeDialog_u24lambda_u2d51":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v3    # "$i$a$-apply-MainActivity$showSelectAccountTypeDialog$dialog$1":I
    nop

    .line 712
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v2, "Builder(this).apply {\n  \u2026false)\n        }.create()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    nop

    .line 713
    .local v1, "dialog":Landroidx/appcompat/app/AlertDialog;
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->accountTypes:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v3, v1, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda25;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 730
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->cancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v3, v1, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda26;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 735
    return-void
.end method

.method private static final showSelectAccountTypeDialog$lambda-53(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p0, "$dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p3, "checkedId"    # I

    const-string p2, "$dialog"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    sparse-switch p3, :sswitch_data_0

    .line 721
    sget-object p2, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 720
    :sswitch_0
    sget-object p2, Lcom/danbamitale/epmslib/utils/IsoAccountType;->UNIVERSAL_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 715
    :sswitch_1
    sget-object p2, Lcom/danbamitale/epmslib/utils/IsoAccountType;->SAVINGS:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 719
    :sswitch_2
    sget-object p2, Lcom/danbamitale/epmslib/utils/IsoAccountType;->INVESTMENT_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 716
    :sswitch_3
    sget-object p2, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CURRENT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 717
    :sswitch_4
    sget-object p2, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CREDIT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 718
    :sswitch_5
    sget-object p2, Lcom/danbamitale/epmslib/utils/IsoAccountType;->BONUS_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 714
    :goto_0
    nop

    .line 723
    .local p2, "accountType":Lcom/danbamitale/epmslib/utils/IsoAccountType;
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 724
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    invoke-direct {p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getIccCardHelper()Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    move-result-object v0

    .local v0, "$this$showSelectAccountTypeDialog_u24lambda_u2d53_u24lambda_u2d52":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    const/4 v1, 0x0

    .line 726
    .local v1, "$i$a$-apply-MainActivity$showSelectAccountTypeDialog$1$1":I
    invoke-virtual {v0, p2}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 727
    nop

    .line 725
    .end local v0    # "$this$showSelectAccountTypeDialog_u24lambda_u2d53_u24lambda_u2d52":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .end local v1    # "$i$a$-apply-MainActivity$showSelectAccountTypeDialog$1$1":I
    nop

    .line 728
    invoke-direct {p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->finishNfcReading()V

    .line 729
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0083 -> :sswitch_5
        0x7f0a00f3 -> :sswitch_4
        0x7f0a00f6 -> :sswitch_3
        0x7f0a01a3 -> :sswitch_2
        0x7f0a02a7 -> :sswitch_1
        0x7f0a0386 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final showSelectAccountTypeDialog$lambda-54(Landroidx/appcompat/app/AlertDialog;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/view/View;)V
    .locals 10
    .param p0, "$dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 732
    invoke-direct {p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    new-instance v9, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    new-instance v6, Ljava/lang/Throwable;

    const-string v1, "Operation was canceled"

    invoke-direct {v6, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->setIccCardHelperLiveData(Lcom/woleapp/netpos/contactless/util/ICCCardHelper;)V

    .line 733
    return-void
.end method

.method private final startNfcPayment(Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;)V
    .locals 5
    .param p1, "nfcDataWrapper"    # Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;

    .line 168
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/NfcDataWrapper;->getCardType()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/16 v1, 0x183

    packed-switch v0, :pswitch_data_0

    .line 184
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 185
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 186
    move-object v3, p0

    check-cast v3, Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 187
    nop

    .line 188
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 184
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 179
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 178
    new-instance v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda24;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    .line 180
    const/4 v4, 0x0

    .line 178
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 171
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 172
    move-object v3, p0

    check-cast v3, Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 173
    nop

    .line 174
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 170
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 192
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final startNfcPayment$lambda-1(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/nfc/Tag;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;
    .param p1, "tag"    # Landroid/nfc/Tag;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveNfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;->onNfcTagDiscovered(Landroid/nfc/Tag;)V

    return-void
.end method

.method private final stopNfcPayment()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final addFragmentWithoutRemove(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .locals 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "containerViewId"    # I
    .param p3, "fragmentName"    # Ljava/lang/String;

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$addFragmentWithoutRemove_u24lambda_u2d95":Landroidx/fragment/app/FragmentTransaction;
    const/4 v3, 0x0

    .line 1116
    .local v3, "$i$a$-apply-MainActivity$addFragmentWithoutRemove$1":I
    nop

    .line 1117
    nop

    .line 1118
    nop

    .line 1119
    nop

    .line 1120
    nop

    .line 1116
    const v4, 0x7f01002f

    const v5, 0x7f010021

    invoke-virtual {v2, v4, v5, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 1122
    invoke-virtual {v2, p2, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1123
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1124
    nop

    .line 1115
    .end local v2    # "$this$addFragmentWithoutRemove_u24lambda_u2d95":Landroidx/fragment/app/FragmentTransaction;
    .end local v3    # "$i$a$-apply-MainActivity$addFragmentWithoutRemove$1":I
    nop

    .line 1124
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 266
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getNetPlusPayMid()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "netPlusPayMid":Ljava/lang/String;
    const-string v1, "fcmbeasypay"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "zenith"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getMerchantDetails(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "providuspos"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getProvidusMerchantDetails(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->generateMerchantDetails()V

    goto :goto_0

    .line 277
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getFcmbMerchantDetails(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->generateMerchantDetails()V

    .line 281
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    move-result-object v1

    const-string v2, "inflate(layoutInflater)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->pdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    .line 282
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrPdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    .line 283
    sget-object v1, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getINSTANCE()Lcom/woleapp/netpos/contactless/app/NetPosApp;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->initMposLibrary(Landroid/app/Activity;)V

    .line 284
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f0d001d

    invoke-static {v1, v3}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    const-string v3, "setContentView(this, R.layout.activity_main)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    .line 285
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->initViews()V

    .line 286
    nop

    .line 287
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .local v2, "$this$onCreate_u24lambda_u2d6":Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;
    const/4 v3, 0x0

    .line 288
    .local v3, "$i$a$-apply-MainActivity$onCreate$1":I
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;->executePendingBindings()V

    .line 289
    nop

    .end local v2    # "$this$onCreate_u24lambda_u2d6":Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;
    .end local v3    # "$i$a$-apply-MainActivity$onCreate$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 287
    nop

    .line 286
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->dialogContactlessReaderBinding:Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;

    .line 290
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .local v2, "$this$onCreate_u24lambda_u2d7":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v3, 0x0

    .line 291
    .local v3, "$i$a$-apply-MainActivity$onCreate$2":I
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->dialogContactlessReaderBinding:Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;

    if-nez v5, :cond_3

    const-string v5, "dialogContactlessReaderBinding"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_3
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/databinding/DialogContatclessReaderBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 293
    nop

    .end local v2    # "$this$onCreate_u24lambda_u2d7":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v3    # "$i$a$-apply-MainActivity$onCreate$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 290
    nop

    .line 293
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v2, "Builder(this).apply {\n  \u2026false)\n        }.create()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->waitingDialog:Landroidx/appcompat/app/AlertDialog;

    .line 294
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, v6, v4}, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    move-result-object v1

    const-string v2, "inflate(layoutInflater, null, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    nop

    .line 1337
    move-object v3, v1

    .local v3, "$this$onCreate_u24lambda_u2d8":Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    const/4 v5, 0x0

    .line 295
    .local v5, "$i$a$-apply-MainActivity$onCreate$3":I
    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->executePendingBindings()V

    .end local v3    # "$this$onCreate_u24lambda_u2d8":Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    .end local v5    # "$i$a$-apply-MainActivity$onCreate$3":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 294
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    .line 297
    nop

    .line 298
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 299
    nop

    .line 300
    nop

    .line 299
    nop

    .line 301
    nop

    .line 299
    nop

    .line 302
    nop

    .line 299
    nop

    .line 303
    nop

    .line 299
    nop

    .line 304
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v10, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v11, "android.permission.BLUETOOTH"

    const-string v12, "android.permission.BLUETOOTH_ADMIN"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 299
    nop

    .line 297
    invoke-static {v1, v3}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    const-string v5, "android.permission.BLUETOOTH_SCAN"

    const/16 v7, 0x1f

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    .line 305
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_6

    .line 306
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 307
    nop

    .line 308
    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v9

    .line 307
    nop

    .line 305
    invoke-static {v1, v9}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 312
    :cond_4
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 313
    const v9, 0x7f13009e

    invoke-virtual {p0, v9}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 314
    nop

    .line 315
    new-instance v10, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v11, 0x7

    invoke-direct {v10, v11}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v10, v11}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 316
    nop

    .line 315
    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v10, v11}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 317
    nop

    .line 315
    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v10, v11}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 318
    nop

    .line 315
    const-string v11, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v10, v11}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 319
    nop

    .line 315
    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v11}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 320
    nop

    .line 315
    const-string v11, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v10, v11}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 322
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v7, :cond_5

    .line 324
    nop

    .line 325
    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 324
    goto :goto_1

    :cond_5
    new-array v3, v4, [Ljava/lang/String;

    .line 315
    :goto_1
    invoke-virtual {v10, v3}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v10, v3}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 311
    invoke-static {v1, v9, v8, v3}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 333
    :cond_6
    new-instance v1, Landroid/app/ProgressDialog;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v3, v1

    .local v3, "$this$onCreate_u24lambda_u2d9":Landroid/app/ProgressDialog;
    const/4 v5, 0x0

    .line 334
    .local v5, "$i$a$-apply-MainActivity$onCreate$4":I
    const-string v7, "Configuring Terminal, Please wait"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 336
    nop

    .end local v3    # "$this$onCreate_u24lambda_u2d9":Landroid/app/ProgressDialog;
    .end local v5    # "$i$a$-apply-MainActivity$onCreate$4":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 333
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 338
    sget-object v1, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Singletons;->getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/ConfigData;->getCardAcceptorIdCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    move-object v1, v3

    .line 339
    .local v1, "mid":Ljava/lang/String;
    :cond_8
    nop

    .line 340
    sget-object v5, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_9

    move v5, v8

    goto :goto_2

    :cond_9
    move v5, v4

    :goto_2
    if-ne v5, v8, :cond_a

    move v5, v8

    goto :goto_3

    :cond_a
    move v5, v4

    :goto_3
    if-eqz v5, :cond_c

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v9, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v9}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_b
    move-object v9, v6

    :goto_4
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MPGS_TAG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 343
    :cond_c
    move-object v5, v3

    .line 339
    :goto_5
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->requestNarration:Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 347
    nop

    .line 348
    move-object v7, p0

    check-cast v7, Landroidx/lifecycle/LifecycleOwner;

    .line 346
    new-instance v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    const-string v10, "STRING_QR_READ_RESULT_REQUEST_KEY"

    invoke-virtual {v5, v10, v7, v9}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 365
    nop

    .line 366
    move-object v7, p0

    check-cast v7, Landroidx/lifecycle/LifecycleOwner;

    .line 364
    new-instance v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    const-string v10, "PIN_BLOCK_RK"

    invoke-virtual {v5, v10, v7, v9}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 374
    nop

    .line 375
    new-instance v5, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v5}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v5, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {p0, v5, v7}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v5

    const-string v7, "registerForActivityResul\u2026          }\n            }"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->resultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 399
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v5, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v5, "$this$onCreate_u24lambda_u2d20":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v7, 0x0

    .line 400
    .local v7, "$i$a$-run-MainActivity$onCreate$8":I
    invoke-virtual {v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 401
    const-string v9, "Message"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    const-string v9, "Retry"

    check-cast v9, Ljava/lang/CharSequence;

    new-instance v10, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v10, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v9, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 406
    const-string v9, "Cancel"

    check-cast v9, Ljava/lang/CharSequence;

    new-instance v10, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v10, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v9, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    .line 399
    .end local v5    # "$this$onCreate_u24lambda_u2d20":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v7    # "$i$a$-run-MainActivity$onCreate$8":I
    const-string v7, "Builder(this).run {\n    \u2026       create()\n        }"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 413
    sget-object v5, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    const-string v7, "user"

    invoke-static {v7, v3}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v7, Lcom/woleapp/netpos/contactless/model/User;

    invoke-virtual {v5, v3, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/model/User;

    .line 414
    .local v3, "user":Lcom/woleapp/netpos/contactless/model/User;
    if-nez v3, :cond_d

    .line 415
    new-instance v2, Landroid/content/Intent;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    const-class v5, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 417
    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    const v5, 0x7f1300d3

    invoke-virtual {p0, v5}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 418
    return-void

    .line 420
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_d
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    const-string v7, "binding"

    if-nez v5, :cond_e

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_e
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->username:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/User;->getBusiness_name()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v5, :cond_f

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_f
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;

    invoke-direct {v8, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    check-cast v8, Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

    invoke-virtual {v5, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 449
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v5, :cond_10

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_10
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->logout:Landroid/widget/ImageButton;

    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    invoke-static {}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->checkBillsPaymentToken()Z

    move-result v5

    if-nez v5, :cond_11

    .line 453
    sget-object v5, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getInstance()Lcom/woleapp/netpos/contactless/network/StormApiService;

    move-result-object v5

    invoke-static {v5}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->getBillsToken(Lcom/woleapp/netpos/contactless/network/StormApiService;)Landroidx/lifecycle/LiveData;

    .line 455
    :cond_11
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-direct {v5}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;-><init>()V

    check-cast v5, Landroidx/fragment/app/Fragment;

    const-class v8, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DashboardFragment::class.java.simpleName"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v8}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getEnableNfcForegroundDispatcher()Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v8, p0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    new-instance v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 466
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getShowAccountTypeDialog()Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v8, p0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    new-instance v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 473
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getShowPinPadDialog()Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v8, p0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    new-instance v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 479
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getShowWaitingDialog()Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v8, p0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    new-instance v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 494
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getSmsSent()Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v8, p0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    new-instance v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 513
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v8, p0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v5, v8}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    move-object v8, v5

    .local v8, "$this$onCreate_u24lambda_u2d35":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v9, 0x0

    .line 514
    .local v9, "$i$a$-apply-MainActivity$onCreate$16":I
    iget-object v10, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    const-string v11, "receiptDialogBinding"

    if-nez v10, :cond_12

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v6

    :cond_12
    invoke-virtual {v10}, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->getRoot()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 515
    iget-object v10, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    if-nez v10, :cond_13

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v6

    .local v10, "$this$onCreate_u24lambda_u2d35_u24lambda_u2d34":Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    :cond_13
    const/4 v11, 0x0

    .line 516
    .local v11, "$i$a$-apply-MainActivity$onCreate$16$1":I
    iget-object v12, v10, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->closeBtn:Landroid/widget/ImageButton;

    new-instance v13, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v13, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v12, v10, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    new-instance v13, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v13, p0, v10}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    nop

    .end local v10    # "$this$onCreate_u24lambda_u2d35_u24lambda_u2d34":Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
    .end local v11    # "$i$a$-apply-MainActivity$onCreate$16$1":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 515
    nop

    .line 537
    nop

    .end local v8    # "$this$onCreate_u24lambda_u2d35":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v9    # "$i$a$-apply-MainActivity$onCreate$16":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 513
    nop

    .line 537
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    const-string v8, "Builder(this).setCancela\u2026     }\n        }.create()"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->receiptAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 538
    if-nez v5, :cond_14

    const-string v5, "receiptAlertDialog"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_14
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_15

    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 539
    :cond_15
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getShowQrPrintDialog()Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v8, p0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    new-instance v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v8, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 546
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->waitingDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v5, :cond_16

    const-string v5, "waitingDialog"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_16
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v8}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 550
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 559
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-static {v5, v6, v4}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v5

    .local v8, "$this$onCreate_u24lambda_u2d40":Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;
    const/4 v9, 0x0

    .line 560
    .local v9, "$i$a$-apply-MainActivity$onCreate$20":I
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->executePendingBindings()V

    .line 561
    move-object v10, p0

    check-cast v10, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v8, v10}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 562
    nop

    .end local v8    # "$this$onCreate_u24lambda_u2d40":Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;
    .end local v9    # "$i$a$-apply-MainActivity$onCreate$20":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 559
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    .line 564
    nop

    .line 565
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-static {v5, v6, v4}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v5

    .local v2, "$this$onCreate_u24lambda_u2d41":Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;
    const/4 v8, 0x0

    .line 566
    .local v8, "$i$a$-apply-MainActivity$onCreate$21":I
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->executePendingBindings()V

    .line 567
    move-object v9, p0

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v2, v9}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 568
    nop

    .end local v2    # "$this$onCreate_u24lambda_u2d41":Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;
    .end local v8    # "$i$a$-apply-MainActivity$onCreate$21":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 565
    nop

    .line 564
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    .line 570
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-direct {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v5, v2

    .local v5, "$this$onCreate_u24lambda_u2d42":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v8, 0x0

    .line 571
    .local v8, "$i$a$-apply-MainActivity$onCreate$22":I
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v9, :cond_17

    const-string v9, "qrAmoutDialogBinding"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v6

    :cond_17
    invoke-virtual {v9}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 572
    nop

    .end local v5    # "$this$onCreate_u24lambda_u2d42":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v8    # "$i$a$-apply-MainActivity$onCreate$22":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 570
    nop

    .line 572
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v5, "Builder(this).apply {\n  \u2026.root)\n        }.create()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    .line 574
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v8, p0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v2, v8}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v2

    .local v8, "$this$onCreate_u24lambda_u2d43":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v9, 0x0

    .line 575
    .local v9, "$i$a$-apply-MainActivity$onCreate$23":I
    iget-object v10, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveCardQrAmountDialogBinding:Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;

    if-nez v10, :cond_18

    const-string v10, "verveCardQrAmountDialogBinding"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v6

    :cond_18
    invoke-virtual {v10}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerveCardQrAmountDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 576
    nop

    .end local v8    # "$this$onCreate_u24lambda_u2d43":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v9    # "$i$a$-apply-MainActivity$onCreate$23":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 574
    nop

    .line 576
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->qrAmountDialogForVerveCard:Landroidx/appcompat/app/AlertDialog;

    .line 577
    nop

    .line 578
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-direct {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f13015b

    invoke-virtual {p0, v5}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 579
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 580
    const v4, 0x7f130097

    invoke-virtual {p0, v4}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 581
    const v4, 0x7f13006c

    invoke-virtual {p0, v4}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 584
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v4, "Builder(this).setTitle(g\u2026               }.create()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->deviceNotSupportedAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 585
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_19
    move-object v2, v6

    :goto_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "terminalId":Ljava/lang/String;
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/User;->getNetplus_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_1a
    move-object v4, v6

    :goto_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "userName":Ljava/lang/String;
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v5

    const-string v8, "getInstance()"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->firebaseInstance:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 588
    if-nez v5, :cond_1b

    const-string v5, "firebaseInstance"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_1b
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;

    invoke-direct {v8, p0, v2, v4}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$25;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v5, v8}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getFireBaseToken(Lcom/google/firebase/messaging/FirebaseMessaging;Lkotlin/jvm/functions/Function1;)V

    .line 592
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;

    if-nez v5, :cond_1c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :cond_1c
    move-object v6, v5

    :goto_8
    iget-object v5, v6, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->merchantDetails:Landroid/widget/TextView;

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    new-instance v5, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;

    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->getVerveNfcListener()Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    move-result-object v5

    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->verveNfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    .line 597
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->setUpViewModelForVerve()V

    .line 598
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->setUpObserversForVerveTransaction()V

    .line 599
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getStartVerveTransaction()Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Landroidx/lifecycle/LifecycleOwner;

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v5, v6, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 608
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 199
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "on new intent"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_MainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 202
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 203
    .local v1, "$i$a$-let-MainActivity$onNewIntent$1":I
    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 204
    nop

    .line 202
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "$i$a$-let-MainActivity$onNewIntent$1":I
    nop

    .line 205
    :cond_0
    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "perms"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "perms"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getLocationUpdates()V

    .line 631
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-super {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 626
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 611
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_MainActivity;->onResume()V

    .line 612
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getIntentDataSentInFromFirebaseService()V

    .line 613
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->handlePdfReceiptPrinting()V

    .line 614
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->fetchUnreadNotifications()V

    .line 615
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->notificationsLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    const-string v0, "notificationsLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda34;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 136
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_MainActivity;->onStart()V

    .line 138
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getConfigurationStatus()I

    move-result v0

    .line 137
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->dismissProgressDialogIfShowing()V

    goto :goto_0

    .line 140
    :pswitch_2
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    .line 141
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->init$default(Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;Landroid/content/Context;ZILjava/lang/Object;)V

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->checkTokenExpiry()V

    .line 148
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.woleapp.netpos.contactless.app.NetPosApp"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getNfcProvider()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 149
    if-eqz v0, :cond_2

    .line 151
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 152
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "NFC Message"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    const-string v1, "NFC is not enabled, goto device settings to enable"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Settings"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda33;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_4

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->deviceNotSupportedAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_3

    const-string v0, "deviceNotSupportedAlertDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 165
    :cond_4
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 4
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 738
    if-eqz p1, :cond_2

    move-object v0, p1

    .local v0, "it":Landroid/nfc/Tag;
    const/4 v1, 0x0

    .line 739
    .local v1, "$i$a$-let-MainActivity$onTagDiscovered$1":I
    invoke-virtual {v0}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcA]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcB]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 740
    :cond_0
    new-instance v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda44;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroid/nfc/Tag;)V

    invoke-virtual {p0, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 745
    :cond_1
    nop

    .line 738
    .end local v0    # "it":Landroid/nfc/Tag;
    .end local v1    # "$i$a$-let-MainActivity$onTagDiscovered$1":I
    nop

    .line 746
    :cond_2
    return-void
.end method
