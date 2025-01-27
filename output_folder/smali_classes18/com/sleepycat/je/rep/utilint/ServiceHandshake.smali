.class public Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOStreamIOAdapter;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ByteChannelIOAdapter;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$NoMatchAuthentication;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ExpectAuthRequestOp;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;,
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    }
.end annotation


# static fields
.field private static final AUTH_MECH_PREFIX:Ljava/lang/String; = "Mechanism:"

.field private static final AUTH_MECH_PREFIX_BYTES:[B

.field private static final AUTH_PREFIX:Ljava/lang/String; = "Authenticate:"

.field private static final AUTH_PREFIX_BYTES:[B

.field private static final CHANNEL_WRITE_ATTEMPT_LIMIT:I = 0xa

.field private static final REQUEST_PREFIX:Ljava/lang/String; = "Service:"

.field private static final REQUEST_PREFIX_BYTES:[B

.field public static final SERVICE_NAME_LIMIT:I = 0x7f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 397
    nop

    .line 398
    const-string v0, "Service:"

    invoke-static {v0}, Lcom/sleepycat/utilint/StringUtils;->toASCII(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->REQUEST_PREFIX_BYTES:[B

    .line 563
    const-string v0, "Authenticate:"

    invoke-static {v0}, Lcom/sleepycat/utilint/StringUtils;->toASCII(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->AUTH_PREFIX_BYTES:[B

    .line 564
    const-string v0, "Mechanism:"

    invoke-static {v0}, Lcom/sleepycat/utilint/StringUtils;->toASCII(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->AUTH_MECH_PREFIX_BYTES:[B

    .line 565
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 59
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->REQUEST_PREFIX_BYTES:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 59
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->AUTH_MECH_PREFIX_BYTES:[B

    return-object v0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;S)V
    .locals 0
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # S

    .line 59
    invoke-static {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->putShort(Ljava/nio/ByteBuffer;S)V

    return-void
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 59
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->AUTH_PREFIX_BYTES:[B

    return-object v0
.end method

.method static synthetic access$400([B[BI)Z
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 59
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->arraysEqual([B[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .line 59
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600([BI)S
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .line 59
    invoke-static {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake;->getShort([BI)S

    move-result v0

    return v0
.end method

.method private static arraysEqual([B[BI)Z
    .locals 3
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "len"    # I

    .line 1107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1108
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 1109
    const/4 v1, 0x0

    return v1

    .line 1107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static encodeBytes([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1117
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 1118
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static findMatch([Ljava/lang/String;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    .locals 8
    .param p0, "mechList"    # [Ljava/lang/String;
    .param p1, "authList"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 968
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 969
    .local v3, "auth":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    array-length v4, p0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    .line 970
    .local v6, "mech":Ljava/lang/String;
    invoke-interface {v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;->getMechanismName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 971
    return-object v3

    .line 969
    .end local v6    # "mech":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 968
    .end local v3    # "auth":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 975
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getShort([BI)S
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 1137
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static mechanisms([Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)Ljava/lang/String;
    .locals 5
    .param p0, "authList"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .local v0, "mechList":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 951
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 952
    .local v3, "auth":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 953
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :cond_0
    invoke-interface {v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;->getMechanismName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .end local v3    # "auth":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 958
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static putShort(Ljava/nio/ByteBuffer;S)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # S

    .line 1127
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1128
    .local v0, "b":B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1129
    shr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 1130
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1131
    return-void
.end method
