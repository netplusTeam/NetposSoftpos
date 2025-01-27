.class public Lcom/visa/vac/tc/utils/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessConfiguration:I

.field private static getTerminalData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/utils/Util;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/utils/Util;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCorrelationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 50
    nop

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 47
    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_VACTC_ANDROID_MBL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/visa/vac/tc/utils/Util;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/Util;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static hmacDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 78
    nop

    .line 55
    const/4 p1, 0x0

    .line 57
    :try_start_0
    const-string v0, "V@/SZFiwWc7K2vPp@aQC$74WfCIJnPcrA2xEZ-k"

    .line 59
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 60
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p2

    .line 61
    invoke-virtual {p2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 66
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v2, :cond_3

    .line 78
    sget v2, Lcom/visa/vac/tc/utils/Util;->ContactlessConfiguration:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/vac/tc/utils/Util;->getTerminalData:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 69
    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 68
    :try_start_1
    aget-byte v2, p0, v1

    goto :goto_3

    :pswitch_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_2

    :goto_2
    goto :goto_4

    .line 68
    :goto_3
    xor-int/lit16 v2, v2, 0x24c

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v3, v0

    :cond_1
    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 70
    :goto_4
    const/16 v3, 0x30

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    :cond_2
    :pswitch_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 76
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    :goto_5
    sget p0, Lcom/visa/vac/tc/utils/Util;->getTerminalData:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/visa/vac/tc/utils/Util;->ContactlessConfiguration:I

    rem-int/lit8 p0, p0, 0x2

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static toString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 40
    nop

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 36
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/visa/vac/tc/utils/Util;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/Util;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static urlEncodeUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 29
    nop

    .line 24
    sget v0, Lcom/visa/vac/tc/utils/Util;->getTerminalData:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/utils/Util;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 23
    :cond_0
    if-nez p0, :cond_1

    .line 24
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x4c

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 29
    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/visa/vac/tc/utils/Util;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p0, 0x0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 27
    :pswitch_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 24
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, p0

    :goto_2
    const-string v1, ""

    packed-switch v0, :pswitch_data_1

    return-object v1

    :pswitch_1
    const/16 v0, 0x12

    :try_start_1
    div-int/2addr v0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 29
    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
