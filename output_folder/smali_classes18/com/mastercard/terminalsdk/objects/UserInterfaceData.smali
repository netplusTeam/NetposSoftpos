.class public final Lcom/mastercard/terminalsdk/objects/UserInterfaceData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;,
        Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;,
        Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;
    }
.end annotation


# instance fields
.field private a:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

.field private b:I

.field private c:[B

.field private d:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

.field private e:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field private f:S

.field private g:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->NA:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->e:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    sget-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->NA:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->a:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const/16 v0, 0xd

    iput v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->b:I

    sget-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->NONE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->d:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->f:S

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->c:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->g:[B

    return-void
.end method

.method private d()[B
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->e:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->getUIRDMessageID()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->a:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->getUIRDStatus()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    iget v1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->b:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->longToBcd(J)[B

    move-result-object v1

    sget-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->n:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v4, 0x3

    invoke-static {v1, v4, v3}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->padData([BILcom/mastercard/terminalsdk/emv/Tag$Format;)[B

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->c:[B

    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x5

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/16 v1, 0xd

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->d:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->getValueQualifier()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->g:[B

    const/4 v4, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x14

    const/16 v2, 0x15

    iget-short v3, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->f:S

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-object v0
.end method


# virtual methods
.method protected final b()Lcom/mastercard/terminalsdk/objects/UserInterfaceData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->b()Lcom/mastercard/terminalsdk/objects/UserInterfaceData;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrencyCode()S
    .locals 1

    iget-short v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->f:S

    return v0
.end method

.method public final getHoldTime()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->b:I

    return v0
.end method

.method public final getLangPreference()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->c:[B

    return-object v0
.end method

.method public final getMessageIdentifier()Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->e:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    return-object v0
.end method

.method public final getStatus()Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->a:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->g:[B

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValueQualifier()Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->d:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    return-object v0
.end method

.method public final setCurrencyCode(S)V
    .locals 0

    iput-short p1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->f:S

    return-void
.end method

.method public final setHoldTime(I)V
    .locals 0

    iput p1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->b:I

    return-void
.end method

.method public final setLangPreference([B)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->c:[B

    array-length v2, v1

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final setMessageIdentifier(Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->e:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    return-void
.end method

.method public final setStatus(Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->a:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    return-void
.end method

.method public final setValue([B)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->g:[B

    array-length v2, v1

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final setValueQualifier(Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->d:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTlv()Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .locals 7

    new-instance v6, Lcom/mastercard/terminalsdk/emv/Tag;

    const/16 v0, 0x25

    const/16 v1, 0x94

    const v2, 0x82b6

    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v4, "cN"

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

    const/16 v3, 0x8

    const/16 v4, 0x8

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    new-instance v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    new-instance v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->d()[B

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
