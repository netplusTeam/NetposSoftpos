.class public Lcom/dspread/xpos/A01Kernel;
.super Ljava/lang/Object;
.source "A01Kernel.java"


# static fields
.field private static a:Lcom/dspread/xpos/A01Kernel; = null

.field protected static final b:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "a01jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Lcom/dspread/xpos/A01Kernel;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/A01Kernel;->a:Lcom/dspread/xpos/A01Kernel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/A01Kernel;

    invoke-direct {v0}, Lcom/dspread/xpos/A01Kernel;-><init>()V

    sput-object v0, Lcom/dspread/xpos/A01Kernel;->a:Lcom/dspread/xpos/A01Kernel;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/A01Kernel;->a:Lcom/dspread/xpos/A01Kernel;

    return-object v0
.end method


# virtual methods
.method public native java_a01kernel_init()V
.end method

.method public native java_a01kernel_release()V
.end method

.method public native java_get_emv_status()I
.end method

.method public native java_get_icc_card_no(II)[B
.end method

.method public native java_get_jni_temp_buf()[B
.end method

.method public native java_get_jni_temp_buf_len()I
.end method

.method public native java_get_jni_version()I
.end method

.method public native java_get_packet_emv_online_data([B)[B
.end method

.method public native java_get_tag([B)[B
.end method

.method public native java_initEMVSession()I
.end method

.method public native java_initializeEMVFile()I
.end method

.method public native java_initializeEMVOper()I
.end method

.method public native java_mobile_conntinue_receive()V
.end method

.method public native java_mobile_continue_send_data()V
.end method

.method public native java_mobile_decode_audio([B)V
.end method

.method public native java_mobile_get_string()[B
.end method

.method public native java_mobile_init()V
.end method

.method public native java_mobile_init_receive()V
.end method

.method public native java_mobile_mgr_cmd([BB)V
.end method

.method public native java_mobile_para_cfg([B)V
.end method

.method public native java_mobile_pull_audio_data()[B
.end method

.method public native java_mobile_pull_status()I
.end method

.method public native java_mobile_send_data([B)V
.end method

.method public native java_set_amount([BI)V
.end method

.method public native java_set_data_encryption_mode([BI)V
.end method

.method public native java_set_debug(I)V
.end method

.method public native java_set_emv_app(I)V
.end method

.method public native java_set_emv_pin([BI)V
.end method

.method public native java_set_emv_status(I)V
.end method

.method public native java_set_jni_temp_buf([BI)V
.end method

.method public native java_set_jump_threshold_positive(II)V
.end method

.method public native java_set_start_with_force_online(I)V
.end method

.method public native java_set_trans_currency_code([BI)V
.end method

.method public native java_set_trans_datatime([BI)V
.end method

.method public native java_startEmvApp(I)V
.end method
