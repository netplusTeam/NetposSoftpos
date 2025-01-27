.class public final Lcom/mastercard/terminalsdk/objects/ErrorIndication;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;,
        Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;,
        Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;,
        Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

.field private c:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;

.field private d:S

.field private e:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field private f:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->a:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Approved"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Not Authorised"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Please enter your PIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Processing error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Please Remove card"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Welcome"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Present card"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Processing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Card read OK Please remove card"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Please insert or swipe card"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Please present one card only"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Approved Please sign"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Authorising Please Wait"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Insert, swipe or try another card"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Please insert card"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "See Phone for Instructions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "Present card again"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->b:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->e:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;->OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->c:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->d:S

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->NA:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->f:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v0, "\n    "

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->j:Ljava/lang/String;

    return-void
.end method

.method private c()[B
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->b:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->getL1Error_Code()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->e:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->getL2Error_Code()B

    move-result v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->c:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;->getL3Error_Code()B

    move-result v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget-short v1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->d:S

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->f:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->getMessageId()B

    move-result v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    return-object v0
.end method


# virtual methods
.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->e()Lcom/mastercard/terminalsdk/objects/ErrorIndication;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lcom/mastercard/terminalsdk/objects/ErrorIndication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;

    return-object v0
.end method

.method public final getL1Error()Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->b:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    return-object v0
.end method

.method public final getL2Error()Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->e:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    return-object v0
.end method

.method public final getL3Error()Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->c:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;

    return-object v0
.end method

.method public final getMessageId()Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->f:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    return-object v0
.end method

.method public final getStatusWord()S
    .locals 1

    iget-short v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->d:S

    return v0
.end method

.method public final setL1Error(Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V
    .locals 3

    const/16 v0, 0x26

    const/16 v1, 0x2193

    const v2, 0xe0f7

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->b:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p1
.end method

.method public final setL2Error(Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;)V
    .locals 3

    const/16 v0, 0x26

    const/16 v1, 0x2193

    const v2, 0xe0f7

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->e:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p1
.end method

.method public final setL3Error(Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;)V
    .locals 3

    const/16 v0, 0x26

    const/16 v1, 0x2193

    const v2, 0xe0f7

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->c:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p1
.end method

.method public final setMessageId(Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;)V
    .locals 3

    const/16 v0, 0x26

    const/16 v1, 0x2193

    const v2, 0xe0f7

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->f:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p1
.end method

.method public final setStatusWord(S)V
    .locals 3

    const/16 v0, 0x26

    const/16 v1, 0x2193

    const v2, 0xe0f7

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-short p1, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->d:S

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTLV()Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .locals 7

    new-instance v6, Lcom/mastercard/terminalsdk/emv/Tag;

    const/16 v0, 0x25

    const/16 v1, 0x94

    const v2, 0x82b6

    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v4, "cS"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "b"

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v3, 0x0

    const/4 v4, 0x6

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    new-instance v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    new-instance v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->c()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-direct {v0, v6, v1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    throw v1

    :cond_0
    throw v0
.end method
