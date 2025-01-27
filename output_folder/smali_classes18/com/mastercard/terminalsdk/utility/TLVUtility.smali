.class public abstract Lcom/mastercard/terminalsdk/utility/TLVUtility;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:I

.field private static d:Ljava/lang/StringBuilder;

.field private static e:Z

.field private static g:I

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    const/4 v1, 0x1

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    invoke-static {}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e()V

    const/4 v1, -0x1

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    const-string/jumbo v1, "\ue034\u205f\u1da1\ue048\u3af8\u382d"

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a:Ljava/lang/String;

    sput-boolean v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->d:Ljava/lang/StringBuilder;

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;[B)Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;[B)",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :pswitch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/emv/Tag;->getNTag()I

    move-result v1

    invoke-static {p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :pswitch_1
    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    return-object v0

    :pswitch_2
    const/16 p0, 0xf

    :try_start_0
    div-int/2addr p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_2

    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p0, p0, 0x2

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/util/ArrayList;[B)Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X0111:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    sget-wide v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->b:J

    invoke-static {v0, v1, p0}, Lcom/mastercard/terminalsdk/internal/m;->c(J[C)[C

    move-result-object p0

    const/4 v0, 0x4

    move v1, v0

    :goto_0
    :pswitch_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-direct {v1, p0, v0, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :pswitch_1
    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v1, -0x4

    aget-char v6, p0, v1

    rem-int/lit8 v7, v1, 0x4

    aget-char v7, p0, v7

    xor-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v2

    sget-wide v10, Lcom/mastercard/terminalsdk/utility/TLVUtility;->b:J

    mul-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v2, v6

    int-to-char v2, v2

    aput-char v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1f

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    move v3, v4

    :cond_2
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :goto_2
    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    const/16 p0, 0x5b

    goto :goto_3

    :cond_3
    const/16 p0, 0x5a

    :goto_3
    packed-switch p0, :pswitch_data_2

    return-object v1

    :pswitch_2
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
    .end packed-switch
.end method

.method private static b([BLcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/objects/ContentType;)V
    .locals 0

    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x61

    goto :goto_0

    :cond_0
    const/16 p0, 0x4a

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Ljava/util/ArrayList;[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;[B[B)[B"
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_3

    :goto_1
    const/16 v3, 0x21

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :cond_2
    :pswitch_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F43:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_5

    :cond_4
    move v3, v1

    :goto_5
    packed-switch v3, :pswitch_data_2

    sget-object p1, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->formByteArrayFromTlvList(Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)[B

    move-result-object p0

    goto :goto_6

    :pswitch_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/emv/Tag;->getNTag()I

    move-result v4

    invoke-static {p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result v5

    if-ne v4, v5, :cond_5

    new-instance v4, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {v4, p2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->setRawBytes(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    sget v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v4, p1, p2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->b(Ljava/util/ArrayList;[B[B)[B

    move-result-object v4

    new-instance v5, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {v5, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-virtual {v3, v5}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->setRawBytes(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    goto :goto_4

    :goto_6
    sget p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static c(Ljava/util/ArrayList;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;[B)Z"
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    move p0, v2

    :goto_1
    packed-switch p0, :pswitch_data_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :pswitch_0
    return v2

    :cond_1
    move v2, v1

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static c([B)[B
    .locals 6

    if-eqz p0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    packed-switch v0, :pswitch_data_0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    aget-byte v0, p0, v1

    const/16 v3, 0x1f

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    move v0, v1

    move v3, v2

    :cond_2
    add-int/2addr v0, v2

    array-length v4, p0

    sub-int/2addr v4, v0

    if-lt v4, v2, :cond_4

    add-int/2addr v3, v2

    aget-byte v4, p0, v0

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_2

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, v1, v3}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object p0

    if-eqz v0, :cond_3

    const/16 v0, 0x41

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F43:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_5
    invoke-static {p0, v1, v2}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object p0

    return-object p0

    :goto_2
    :pswitch_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F41:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/mastercard/terminalsdk/objects/ContentType;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v2, v2, 0x2

    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    const/4 v12, -0x1

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    if-eqz v9, :cond_10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    array-length v14, v0

    const/4 v15, 0x0

    move v2, v15

    :goto_0
    if-ge v2, v14, :cond_0

    const/16 v3, 0x4a

    goto :goto_1

    :cond_0
    const/16 v3, 0x2f

    :goto_1
    packed-switch v3, :pswitch_data_0

    sget v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v3, v3, 0x31

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move v3, v11

    goto :goto_2

    :cond_1
    move v3, v15

    :goto_2
    packed-switch v3, :pswitch_data_1

    :try_start_0
    invoke-static {v0, v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->d([BI)I

    move-result v2

    goto :goto_3

    :pswitch_0
    invoke-static {v0, v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->d([BI)I

    move-result v2
    :try_end_0
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v14, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v0

    move v1, v12

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :goto_3
    if-lt v2, v14, :cond_2

    :goto_4
    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    :pswitch_1
    sput v12, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-object v13

    :cond_2
    :try_start_1
    invoke-static {v0, v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->getCurrentTag([BI)[B

    move-result-object v3

    invoke-static {v3}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->getReferenceTagDetails([B)Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v5

    array-length v4, v3

    add-int v8, v2, v4

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->DOL:Lcom/mastercard/terminalsdk/objects/ContentType;
    :try_end_1
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v2, :cond_5

    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v2, v2, 0x2

    :try_start_2
    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne v1, v2, :cond_3

    goto :goto_7

    :cond_3
    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->T:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne v1, v2, :cond_4

    new-array v4, v15, [B

    new-array v6, v15, [B
    :try_end_2
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v6, p2

    move v12, v8

    move/from16 v8, v16

    :try_start_3
    invoke-static/range {v2 .. v8}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e([B[B[BLcom/mastercard/terminalsdk/emv/Tag;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v2

    :goto_5
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    move v12, v8

    :goto_6
    move v2, v12

    goto/16 :goto_c

    :cond_5
    :goto_7
    move v12, v8

    invoke-static {v0, v12}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e([BI)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->DOL:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne v1, v2, :cond_6

    new-instance v2, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;

    invoke-static {v0, v12, v11}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;-><init>([B)V

    :goto_8
    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;->getLengthBytes()[B

    move-result-object v4

    goto :goto_9

    :cond_6
    invoke-static {v0, v12}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->getTLVLengthInfo([BI)Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;

    move-result-object v2

    goto :goto_8

    :goto_9
    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;->getExpectedNumberOfBytes()I

    move-result v6

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;->getLengthBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v12, v2

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->DOL:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-eq v1, v2, :cond_b

    if-eqz v6, :cond_b

    invoke-static {v0, v12, v1, v6}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e([BILcom/mastercard/terminalsdk/objects/ContentType;I)[B

    move-result-object v7

    if-eqz v7, :cond_7

    sget-boolean v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e:Z

    if-eqz v2, :cond_7

    invoke-static {v7, v5, v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->b([BLcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/objects/ContentType;)V

    :cond_7
    add-int/2addr v12, v6

    invoke-static {v3}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->isConstructed([B)Z

    move-result v2
    :try_end_3
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_a

    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    :try_start_4
    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    const/16 v6, 0xb

    div-int/2addr v6, v15

    if-eq v1, v2, :cond_8

    move v2, v11

    goto :goto_a

    :cond_8
    move v2, v15

    :goto_a
    packed-switch v2, :pswitch_data_2

    goto :goto_b

    :cond_9
    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-eq v1, v2, :cond_a

    :pswitch_2
    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    invoke-static {v7, v1, v9, v10}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v8

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    const/16 v16, 0x1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v6, p2

    move-object v7, v8

    move/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e([B[B[BLcom/mastercard/terminalsdk/emv/Tag;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v2

    goto :goto_5

    :cond_a
    :goto_b
    new-instance v8, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {v8, v7}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    const/16 v16, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v6, p2

    move-object v7, v8

    move/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e([B[B[BLcom/mastercard/terminalsdk/emv/Tag;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v2

    goto/16 :goto_5

    :cond_b
    invoke-static {v3}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->isConstructed([B)Z

    move-result v2

    if-eqz v2, :cond_c

    new-array v6, v15, [B

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v8}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e([B[B[BLcom/mastercard/terminalsdk/emv/Tag;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v2

    goto/16 :goto_5

    :cond_c
    new-array v6, v15, [B

    new-instance v7, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    new-array v2, v15, [B

    invoke-direct {v7, v2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    const/4 v8, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v8}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e([B[B[BLcom/mastercard/terminalsdk/emv/Tag;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v2

    goto/16 :goto_5

    :goto_c
    const/4 v12, -0x1

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F43:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {v0, v1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw v0
    :try_end_4
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_d
    if-eqz v10, :cond_f

    const/4 v1, -0x1

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/16 v0, 0x5f

    :try_start_5
    div-int/2addr v0, v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v13

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_e
    return-object v13

    :cond_f
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    const/4 v1, -0x1

    :goto_e
    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    throw v0

    :cond_10
    move v1, v12

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c:I

    new-instance v0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F42:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {v0, v1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static d([BI)I
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    const/16 v0, 0x22

    goto :goto_2

    :cond_1
    const/16 v0, 0x48

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_0

    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch
.end method

.method private static e([B[B[BLcom/mastercard/terminalsdk/emv/Tag;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .locals 12

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p4, v7, v10

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getUpdateSources()[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/mastercard/terminalsdk/emv/Tag;

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getFormat()Lcom/mastercard/terminalsdk/emv/Tag$Format;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getMinLen()I

    move-result v4

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getMaxLen()I

    move-result v5

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getRuleToApply()Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    move-result-object v8

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getUpdateSources()[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    move-result-object v9

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getError()Ljava/lang/String;

    move-result-object v10

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v11, Lcom/mastercard/terminalsdk/emv/Tag;

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getFormat()Lcom/mastercard/terminalsdk/emv/Tag$Format;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getMinLen()I

    move-result v4

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getMaxLen()I

    move-result v5

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getRuleToApply()Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    move-result-object v8

    invoke-virtual {p3}, Lcom/mastercard/terminalsdk/emv/Tag;->getError()Ljava/lang/String;

    move-result-object v9

    move-object v1, v11

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;Ljava/lang/String;)V

    sget v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v10

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v2, v11

    :goto_1
    new-instance v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    new-instance v3, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-object v1, p2

    invoke-direct {v3, p2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    move-object v1, v0

    move-object v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;[BLjava/lang/Object;Z)V

    sget v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Lcom/mastercard/terminalsdk/objects/ContentType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v2, v2, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTag()[B

    move-result-object v3

    invoke-static {p1, v3}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c(Ljava/util/ArrayList;[B)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move v2, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    packed-switch v2, :pswitch_data_1

    const/16 v2, 0x33

    :try_start_0
    div-int/2addr v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    const/16 v3, 0x57

    :goto_3
    packed-switch v3, :pswitch_data_2

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3, p1, p2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    new-instance v4, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-static {v3, p2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->formByteArrayFromTlvList(Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)[B

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-virtual {v2, v4}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->setRawBytes(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->setRawBytes(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    goto :goto_1

    :cond_5
    return-object p0

    :goto_4
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_1
    .end packed-switch
.end method

.method static e()V
    .locals 2

    const-wide v0, 0x143f78e3391c1a87L

    sput-wide v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->b:J

    return-void
.end method

.method private static e([BI)Z
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BI)[B

    move-result-object p0

    array-length p0, p0

    if-gtz p0, :cond_0

    const/16 p0, 0x17

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    :goto_0
    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :goto_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method private static e([BII)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BI)[B

    move-result-object p0

    array-length p0, p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ge p0, p2, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_1

    :pswitch_0
    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    :cond_1
    const/16 v0, 0x58

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static e([BILcom/mastercard/terminalsdk/objects/ContentType;I)[B
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x57

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne p2, v0, :cond_2

    :goto_1
    if-lez p3, :cond_1

    const/4 p2, 0x1

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    packed-switch p2, :pswitch_data_1

    sget p2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 p2, p2, 0x41

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 p2, p2, 0x2

    goto :goto_3

    :cond_2
    :pswitch_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F44:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :goto_3
    invoke-static {p0, p1, p3}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e([BII)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0, p1, p3}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F43:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static extractTLV([B[BLcom/mastercard/terminalsdk/objects/ContentType;)Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    add-int/lit8 v3, v3, 0x63

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz p2, :cond_4

    array-length v3, p0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v2, v2, 0x2

    array-length v0, p1

    if-nez v2, :cond_2

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_2
    if-lt v0, v1, :cond_4

    :goto_2
    const-string/jumbo v0, "\u684b\u8ed5\u8787\u6866\u7591"

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0, v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/util/ArrayList;[B)Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    :goto_3
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F44:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static findTaginDataObjectList([BLjava/util/ArrayList;)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;)",
            "Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getNTag()I

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    goto :goto_5

    :pswitch_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getNTag()I

    move-result v4

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    const/16 p1, 0x61

    goto :goto_3

    :cond_4
    const/16 p1, 0x59

    :goto_3
    packed-switch p1, :pswitch_data_3

    goto :goto_4

    :pswitch_3
    return-object p0

    :goto_4
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->findTaginDataObjectList([BLjava/util/ArrayList;)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object p0

    return-object p0

    :goto_5
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :cond_6
    :goto_6
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X0111:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x59
        :pswitch_3
    .end packed-switch
.end method

.method public static formByteArrayFromTlvList(Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;",
            "Lcom/mastercard/terminalsdk/objects/ContentType;",
            ")[B"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_1

    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 p0, p0, 0x2

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v0, :cond_b

    new-instance v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    new-array v3, v1, [B

    invoke-direct {v2, v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    sget-object v4, Lcom/mastercard/terminalsdk/objects/ContentType;->T:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-eq p1, v4, :cond_6

    sget-object v4, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-eq p1, v4, :cond_6

    sget-object v4, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne p1, v4, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    packed-switch v4, :pswitch_data_2

    sget-object v4, Lcom/mastercard/terminalsdk/objects/ContentType;->DOL:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne p1, v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    packed-switch v4, :pswitch_data_3

    sget v4, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v4, v4, 0x43

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_6
    :pswitch_2
    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTag()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    sget-object v4, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne p1, v4, :cond_8

    sget v4, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v4, v4, 0x63

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getEncodedLengthBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    const/16 v3, 0x8

    :try_start_1
    div-int/2addr v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getEncodedLengthBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    goto/16 :goto_2

    :cond_8
    sget-object v4, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne p1, v4, :cond_2

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTag()[B

    move-result-object v4

    invoke-static {v4}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->isConstructed([B)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x21

    goto :goto_5

    :cond_9
    const/16 v4, 0x37

    :goto_5
    packed-switch v4, :pswitch_data_4

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getEncodedLengthBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getEncodedLengthBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getNumericLength()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->formByteArrayFromTlvList(Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F43:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :goto_6
    new-array p0, v1, [B

    return-object p0

    :cond_c
    :pswitch_4
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F42:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x21
        :pswitch_3
    .end packed-switch
.end method

.method public static getCurrentTag([BI)[B
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    :goto_0
    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BI)[B

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c([B)[B

    move-result-object p0

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->c([B)[B

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public static getReferenceTagDetails([B)Lcom/mastercard/terminalsdk/emv/Tag;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "e"

    const-string v5, "a"

    const/16 v6, 0x1e91

    const/16 v7, 0x26

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    :try_start_0
    invoke-static {v7, v6, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v7, v6, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/emv/Tag;
    :try_end_2
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_1

    const/16 v4, 0x32

    goto :goto_1

    :cond_1
    const/16 v4, 0x3b

    :goto_1
    packed-switch v4, :pswitch_data_1

    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    :pswitch_1
    const/4 v0, 0x3

    :try_start_4
    new-array v12, v0, [Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->RA:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    aput-object v0, v12, v3

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->K:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    aput-object v0, v12, v2

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->ACT:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    aput-object v0, v12, v1

    new-instance v0, Lcom/mastercard/terminalsdk/emv/Tag;

    sget-object v6, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v7, 0x0

    const/16 v8, 0xff

    const-string/jumbo v1, "\u5e97\u1ea9\u7851\u5ec2\u0440\u4d34\uaa6f\ue594\u34e4\u9a7d\ue715\u5c05\u8afb\uf077\u7170"

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/String;

    const-string/jumbo v1, "\u684b\u8ed5\u8787\u6866\u7591"

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v3

    sget-object v11, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->NONE:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    const-string v13, ""

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v13}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;Ljava/lang/String;)V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    throw v1

    :cond_4
    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    throw v1

    :cond_5
    throw v0
    :try_end_4
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_5
    invoke-static {v7, v6, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {v7, v6, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw v8
    :try_end_7
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    throw p0

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    throw v1

    :cond_6
    throw v0

    :catchall_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_7

    throw v1

    :cond_7
    throw v0
    :try_end_8
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    new-instance v0, Lcom/mastercard/terminalsdk/emv/Tag;

    sget-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v4, 0x0

    const/16 v5, 0x7fff

    const-string/jumbo v1, "\uf758\uad8d\ud45f\uf70d\ub764\ue13a\u26da\u6921\u9d2b\u2959\u4b1b\ud0b0\u2334\u4353\udd7e\u4acc\uc921\uf576\ua773\ue4a7\u5f08\u6f08\u0944\u9142\ue5b1\u80ec\u93a0\u0b6e\u8b93\u3ac7"

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch
.end method

.method public static getTLVLengthInfo([BI)Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v2, v2, 0x2

    array-length v2, p0

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    add-int/lit8 v3, v3, 0x21

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    packed-switch v2, :pswitch_data_2

    array-length v0, p0

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_5

    goto :goto_3

    :pswitch_2
    array-length v2, p0

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_5

    :goto_3
    aget-byte v0, p0, p1

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_3

    new-instance v0, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;

    invoke-static {p0, p1, v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;-><init>([B)V

    sget p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    array-length v2, p0

    sub-int/2addr v2, v1

    sub-int/2addr v2, p1

    if-lt v2, v0, :cond_4

    new-instance v2, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;

    add-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;-><init>([B)V

    return-object v2

    :cond_4
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F45:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_5
    :goto_4
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F44:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTagValue(Lcom/mastercard/terminalsdk/iso8825/BerTlv;Ljava/lang/String;)[B
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x56

    :goto_0
    const/4 v1, 0x0

    const-string/jumbo v2, "\u9114\u9455\ufc42\u912e\u8298"

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->getValue(Lcom/mastercard/terminalsdk/iso8825/BerTlv;[Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, [B

    check-cast p0, [B

    goto :goto_2

    :pswitch_0
    invoke-static {v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->getValue(Lcom/mastercard/terminalsdk/iso8825/BerTlv;[Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :goto_2
    sget p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method public static getValue(Lcom/mastercard/terminalsdk/iso8825/BerTlv;[Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_8

    array-length v1, p1

    if-lt p2, v1, :cond_0

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-object v2

    :cond_0
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_7

    aget-object v0, p1, p2

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTag()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3a

    goto :goto_2

    :cond_3
    const/16 v1, 0x24

    :goto_2
    packed-switch v1, :pswitch_data_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v1, p1, v3}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->getValue(Lcom/mastercard/terminalsdk/iso8825/BerTlv;[Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v3, 0x1f

    goto :goto_3

    :cond_4
    const/16 v3, 0x23

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    return-object v1

    :cond_5
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_6
    :pswitch_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-object v2

    :cond_8
    array-length p0, p1

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public static isConstructed([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    sget v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    array-length v1, p0

    if-ge v1, v3, :cond_0

    const/16 v1, 0x24

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :cond_1
    array-length v1, p0

    if-ge v1, v3, :cond_2

    goto :goto_2

    :cond_2
    :pswitch_0
    aget-byte p0, p0, v0

    const/16 v1, 0x20

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_1
    packed-switch p0, :pswitch_data_1

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v2, v2, 0x2

    move v0, v3

    :cond_4
    :goto_2
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static isPrivateClass([B)Z
    .locals 5

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/16 v2, 0x41

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v1, v1, 0x2

    array-length v1, p0

    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    :goto_0
    packed-switch v2, :pswitch_data_0

    aget-byte p0, p0, v0

    const/16 v1, 0xc0

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v4

    :goto_1
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    add-int/lit8 v3, v3, 0x3f

    rem-int/lit16 p0, v3, 0x80

    sput p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v3, v3, 0x2

    move v0, v4

    :cond_2
    :goto_2
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static isTLVEncoded([B)Z
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    const/4 v1, 0x1

    const-string/jumbo v2, "\u684b\u8ed5\u8787\u6866\u7591"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    invoke-static {v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2, v3}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move p0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_1
    invoke-static {v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2, v3}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v3

    :goto_2
    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v1, v3

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return p0

    :goto_3
    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    return v3

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static isTaginDataObjectList([BLjava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    :pswitch_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/emv/Tag;->getNTag()I

    move-result v0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_1

    return v3

    :cond_2
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseTlv([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/mastercard/terminalsdk/objects/ContentType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeTag([BLcom/mastercard/terminalsdk/objects/ContentType;[B)[B
    .locals 5

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-eqz p2, :cond_a

    array-length v2, p2

    if-lt v2, v1, :cond_a

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->T:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne p1, v2, :cond_2

    array-length v2, p0

    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F43:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_2
    :goto_1
    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_5

    sget v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    :goto_3
    array-length v0, p0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_9

    :pswitch_1
    const-string/jumbo v0, "\u684b\u8ed5\u8787\u6866\u7591"

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/emv/Tag;->getNTag()I

    move-result v1

    invoke-static {p2}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    sget v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/emv/Tag;->getNTag()I

    invoke-static {p2}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :cond_8
    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->formByteArrayFromTlvList(Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)[B

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F43:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_a
    :goto_5
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F44:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static removeUnexpectedTags([BLjava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Lcom/mastercard/terminalsdk/objects/ContentType;",
            ")[B"
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v2, "\u684b\u8ed5\u8787\u6866\u7591"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0, v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)Ljava/util/ArrayList;

    invoke-static {p0, p2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->formByteArrayFromTlvList(Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)[B

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static switchLogging(Z)V
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    sput-boolean p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->e:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x3f

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public static updateTag([B[B[B)[B
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/mastercard/terminalsdk/utility/TLVUtility;->h:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/16 v1, 0x30

    goto :goto_1

    :cond_1
    const/16 v1, 0x5d

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/TLVUtility;->g:I

    rem-int/lit8 v0, v0, 0x2

    array-length v0, p1

    if-lt v0, v2, :cond_2

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    const-string/jumbo v1, "\u684b\u8ed5\u8787\u6866\u7591"

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->b(Ljava/util/ArrayList;[B[B)[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_2
    :pswitch_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F44:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method
