.class Lcom/dspread/xpos/DoEmvApp$b;
.super Ljava/lang/Object;
.source "DoEmvApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/DoEmvApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/DoEmvApp;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/DoEmvApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/DoEmvApp;Lcom/dspread/xpos/DoEmvApp$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/DoEmvApp$b;-><init>(Lcom/dspread/xpos/DoEmvApp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-static {v1}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_emv_status()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "[doEmvApp] __get_select_emv_app_result: "

    const/4 v3, 0x1

    const/16 v4, 0xd

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 94
    :pswitch_0
    :try_start_1
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 95
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dspread/xpos/DoEmvApp;->b(Lcom/dspread/xpos/DoEmvApp;[BI)[B

    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] __emv_online_data_encrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 97
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 98
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_1
    nop

    .line 99
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 100
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v2

    aget-byte v2, v2, v5

    invoke-static {v1, v2}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp;I)I

    move-result v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] __host_make_nodata_packet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 102
    new-array v2, v5, [B

    invoke-virtual {v0, v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 103
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_2
    nop

    .line 104
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 105
    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v1

    .line 106
    array-length v2, v1

    .line 107
    aget-byte v6, v1, v5

    sub-int/2addr v2, v3

    .line 108
    new-array v7, v2, [B

    .line 109
    invoke-static {v1, v3, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-static {v1, v6, v7, v2}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp;I[BI)I

    move-result v1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] __emv_icc_exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 112
    new-array v2, v5, [B

    invoke-virtual {v0, v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 113
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_3
    nop

    .line 114
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 115
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dspread/xpos/DoEmvApp;->g(Lcom/dspread/xpos/DoEmvApp;[BI)[B

    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] __go_online_result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 117
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 118
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_4
    nop

    .line 119
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 120
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dspread/xpos/DoEmvApp;->f(Lcom/dspread/xpos/DoEmvApp;[BI)[B

    move-result-object v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] __go_online: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 122
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 123
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_5
    nop

    .line 124
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 125
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dspread/xpos/DoEmvApp;->e(Lcom/dspread/xpos/DoEmvApp;[BI)I

    move-result v1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] __save_emv_water: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 127
    new-array v2, v5, [B

    invoke-virtual {v0, v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 128
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_6
    nop

    .line 129
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 130
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v6

    invoke-static {v1, v3, v6}, Lcom/dspread/xpos/DoEmvApp;->d(Lcom/dspread/xpos/DoEmvApp;[BI)I

    move-result v1

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 132
    new-array v2, v5, [B

    invoke-virtual {v0, v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 133
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_7
    nop

    .line 134
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 135
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v6

    const/16 v7, 0x1e

    invoke-static {v1, v3, v6, v7}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp;[BII)I

    move-result v1

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 137
    new-array v2, v5, [B

    invoke-virtual {v0, v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 138
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_8
    nop

    .line 139
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 140
    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    aget-byte v6, v1, v5

    aget-byte v3, v1, v3

    const/4 v7, 0x2

    aget-byte v1, v1, v7

    invoke-static {v2, v6, v3, v1}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp;III)I

    move-result v1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] get_emv_pin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    if-gez v1, :cond_0

    .line 144
    new-array v2, v5, [B

    invoke-virtual {v0, v2, v1}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    :cond_0
    nop

    .line 146
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto/16 :goto_1

    :pswitch_9
    nop

    .line 147
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 148
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dspread/xpos/DoEmvApp;->c(Lcom/dspread/xpos/DoEmvApp;[BI)[B

    move-result-object v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] icc_transmit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 150
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 151
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto :goto_1

    :pswitch_a
    nop

    .line 152
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 153
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/dspread/xpos/DoEmvApp;->d([BI)[B

    move-result-object v1

    .line 154
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 155
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    goto :goto_1

    :pswitch_b
    nop

    .line 156
    invoke-virtual {v0, v5}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V

    .line 157
    iget-object v1, p0, Lcom/dspread/xpos/DoEmvApp$b;->a:Lcom/dspread/xpos/DoEmvApp;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_temp_buf_len()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dspread/xpos/DoEmvApp;->a(Lcom/dspread/xpos/DoEmvApp;[BI)[B

    move-result-object v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doEmvApp] power on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 159
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/dspread/xpos/A01Kernel;->java_set_jni_temp_buf([BI)V

    .line 160
    invoke-virtual {v0, v4}, Lcom/dspread/xpos/A01Kernel;->java_set_emv_status(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-wide/16 v1, 0x1

    .line 250
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 262
    :cond_1
    :try_start_3
    const-string v0, "[doEmvApp] thread exit()"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 265
    const-string v0, "Vpos: receivePacket Exception"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
