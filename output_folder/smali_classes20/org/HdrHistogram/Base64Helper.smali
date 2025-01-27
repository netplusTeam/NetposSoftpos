.class Lorg/HdrHistogram/Base64Helper;
.super Ljava/lang/Object;
.source "Base64Helper.java"


# static fields
.field private static decodeMethod:Ljava/lang/reflect/Method;

.field private static decoderObj:Ljava/lang/Object;

.field private static encodeMethod:Ljava/lang/reflect/Method;

.field private static encoderObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 70
    const-class v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "java.util.Base64"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 72
    .local v4, "javaUtilBase64Class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getDecoder"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 73
    .local v5, "getDecoderMethod":Ljava/lang/reflect/Method;
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lorg/HdrHistogram/Base64Helper;->decoderObj:Ljava/lang/Object;

    .line 74
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "decode"

    new-array v8, v1, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lorg/HdrHistogram/Base64Helper;->decodeMethod:Ljava/lang/reflect/Method;

    .line 76
    const-string v6, "getEncoder"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 77
    .local v6, "getEncoderMethod":Ljava/lang/reflect/Method;
    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sput-object v7, Lorg/HdrHistogram/Base64Helper;->encoderObj:Ljava/lang/Object;

    .line 78
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "encodeToString"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v0, v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lorg/HdrHistogram/Base64Helper;->encodeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v4    # "javaUtilBase64Class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "getDecoderMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getEncoderMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/Throwable;
    sput-object v3, Lorg/HdrHistogram/Base64Helper;->decodeMethod:Ljava/lang/reflect/Method;

    .line 81
    sput-object v3, Lorg/HdrHistogram/Base64Helper;->encodeMethod:Ljava/lang/reflect/Method;

    .line 84
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v4, Lorg/HdrHistogram/Base64Helper;->encodeMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 85
    sput-object v3, Lorg/HdrHistogram/Base64Helper;->decoderObj:Ljava/lang/Object;

    .line 86
    sput-object v3, Lorg/HdrHistogram/Base64Helper;->encoderObj:Ljava/lang/Object;

    .line 88
    :try_start_1
    const-string v4, "javax.xml.bind.DatatypeConverter"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 89
    .local v4, "javaxXmlBindDatatypeConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "parseBase64Binary"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lorg/HdrHistogram/Base64Helper;->decodeMethod:Ljava/lang/reflect/Method;

    .line 90
    const-string v5, "printBase64Binary"

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v0, v1, v2

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/HdrHistogram/Base64Helper;->encodeMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .end local v4    # "javaxXmlBindDatatypeConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    sput-object v3, Lorg/HdrHistogram/Base64Helper;->decodeMethod:Ljava/lang/reflect/Method;

    .line 93
    sput-object v3, Lorg/HdrHistogram/Base64Helper;->encodeMethod:Ljava/lang/reflect/Method;

    .line 96
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseBase64Binary(Ljava/lang/String;)[B
    .locals 4
    .param p0, "base64input"    # Ljava/lang/String;

    .line 53
    :try_start_0
    sget-object v0, Lorg/HdrHistogram/Base64Helper;->decodeMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/HdrHistogram/Base64Helper;->decoderObj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to use platform\'s base64 decode method"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static printBase64Binary([B)Ljava/lang/String;
    .locals 4
    .param p0, "binaryArray"    # [B

    .line 39
    :try_start_0
    sget-object v0, Lorg/HdrHistogram/Base64Helper;->encodeMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/HdrHistogram/Base64Helper;->encoderObj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to use platform\'s base64 encode method"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
