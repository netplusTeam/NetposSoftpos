.class public Lcom/alcineo/softpos/aonceil;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/aonceil$acileon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "Lcom/alcineo/softpos/aonceil$acileon;",
        ">;"
    }
.end annotation


# static fields
.field public static final acileon:I = 0x30

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static synthetic $r8$lambda$1vVzI66QQkRHXVNEYSvIK57X84Y(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/aonceil;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/aonceil;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/aonceil;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/aonceil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/aonceil$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/aonceil;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(BLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;BZZZZ[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    invoke-static {p3}, Lcom/alcineo/softpos/aonceil;->acileon(Ljava/math/BigDecimal;)[B

    move-result-object p3

    invoke-static {p4}, Lcom/alcineo/softpos/aonceil;->acileon(Ljava/math/BigDecimal;)[B

    move-result-object p4

    invoke-static {p5}, Lcom/alcineo/softpos/aonceil;->acileon(Ljava/math/BigDecimal;)[B

    move-result-object p5

    invoke-static {p6}, Lcom/alcineo/softpos/aonceil;->acileon(Ljava/math/BigDecimal;)[B

    move-result-object p6

    invoke-static {p2}, Lcom/alcineo/softpos/aonceil;->aoleinc(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x14

    new-array v0, v0, [B

    if-eqz p9, :cond_0

    or-int/lit8 p8, p8, 0x2

    int-to-byte p8, p8

    :cond_0
    if-eqz p10, :cond_1

    or-int/lit8 p8, p8, 0x4

    int-to-byte p8, p8

    :cond_1
    if-nez p11, :cond_2

    or-int/lit8 p8, p8, 0x8

    int-to-byte p8, p8

    :cond_2
    const/16 p9, 0x32

    invoke-static {p9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p9

    invoke-virtual {p9, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p9, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p9, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p9, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p9, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p9, p6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p9, p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p9, p8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length p1, p12

    const/4 p2, 0x0

    invoke-static {p12, p2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method private constructor <init>(BLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;BZZZZ[BBB)V
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p12

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    invoke-static {p3}, Lcom/alcineo/softpos/aonceil;->acileon(Ljava/math/BigDecimal;)[B

    move-result-object v2

    invoke-static {p4}, Lcom/alcineo/softpos/aonceil;->acileon(Ljava/math/BigDecimal;)[B

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/alcineo/softpos/aonceil;->acileon(Ljava/math/BigDecimal;)[B

    move-result-object v4

    invoke-static/range {p6 .. p6}, Lcom/alcineo/softpos/aonceil;->acileon(Ljava/math/BigDecimal;)[B

    move-result-object v5

    invoke-static {p2}, Lcom/alcineo/softpos/aonceil;->aoleinc(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v7, 0x14

    new-array v7, v7, [B

    if-eqz p9, :cond_0

    or-int/lit8 v8, p8, 0x2

    int-to-byte v8, v8

    goto :goto_0

    :cond_0
    move/from16 v8, p8

    :goto_0
    if-eqz p10, :cond_1

    or-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    :cond_1
    if-nez p11, :cond_2

    or-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    :cond_2
    const/16 v9, 0x33

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v10, p1

    invoke-virtual {v9, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move/from16 v2, p7

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move/from16 v1, p13

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move/from16 v1, p14

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method private static native acileon(Lcom/alcineo/transaction/TransactionType;)B
.end method

.method private static native acileon(Ljava/lang/String;)B
.end method

.method public static native acileon(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;BLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;BZZZZ[B)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "B",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            "BZZZZ[B)",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/softpos/aonceil;",
            "Lcom/alcineo/softpos/aonceil$acileon;",
            ">;"
        }
    .end annotation
.end method

.method public static native acileon(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;BLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;BZZZZ[BBB)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "B",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            "BZZZZ[BBB)",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/softpos/aonceil;",
            "Lcom/alcineo/softpos/aonceil$acileon;",
            ">;"
        }
    .end annotation
.end method

.method private static native acileon(Ljava/math/BigDecimal;)[B
.end method

.method private static aoleinc(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x2

    if-nez p0, :cond_0

    new-array p0, v0, [B

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array p0, v0, [B

    fill-array-data p0, :array_1

    return-object p0

    :cond_1
    const/4 v0, 0x4

    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alcineo/softpos/oelacni;->acileon(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x12t
        -0x12t
    .end array-data
.end method

.method private static native aoleinc(Ljava/math/BigDecimal;)[B
.end method

.method private static noaceli(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_1
    const/4 v0, 0x4

    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alcineo/softpos/oelacni;->acileon(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public native acileon()Lcom/alcineo/softpos/aonceil$acileon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native getCommandName()Ljava/lang/String;
.end method

.method public bridge native synthetic getExecutionResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
