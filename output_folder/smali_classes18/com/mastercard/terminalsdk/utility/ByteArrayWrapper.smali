.class public Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:I

.field private static b:I

.field private static c:J


# instance fields
.field private d:[B

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    const-wide v0, -0x13f244719253c876L    # -3.1279547563291126E212

    sput-wide v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->e:Z

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->e:Z

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-eqz p0, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_1
    check-cast p0, [C

    sget-wide v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->c:J

    invoke-static {v0, v1, p0}, Lcom/mastercard/terminalsdk/internal/m;->c(J[C)[C

    move-result-object p0

    const/4 v0, 0x4

    move v1, v0

    :goto_2
    :pswitch_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    sget v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v1, -0x4

    aget-char v4, p0, v1

    rem-int/lit8 v5, v1, 0x4

    aget-char v5, p0, v5

    xor-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v2

    sget-wide v8, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->c:J

    mul-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    int-to-char v2, v2

    aput-char v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x4b

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/16 v2, 0x14

    goto :goto_3

    :cond_1
    const/16 v2, 0x40

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-direct {v1, p0, v0, v2}, Ljava/lang/String;-><init>([CII)V

    sget p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return-object v1

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
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final append([B)V
    .locals 5

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    array-length v1, v0

    array-length v3, p1

    add-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    array-length v3, v0

    array-length v4, p1

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v0

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    array-length v0, v0

    array-length v1, p1

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    :goto_1
    sget p1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final clone()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    .locals 6

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    goto :goto_2

    :goto_1
    check-cast v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x3f

    :try_start_1
    div-int/2addr v3, v2
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    sget v3, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v3, v3, 0x6f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    move v1, v2

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\ue571\ue533\u42b4\u7547\uf292\u69e8\u3b5a\u9df2\ucf13\u6087\ud0bc\u4bb4\u591a\u86ca\ub6e4\uad9c\u7f3b\ua735\u941b\u8e77\u9da9\uc54d\u7a25\ud041\ub394\ufb7b\u584b\u3255\ud1ad\u1952\u3982\u14bd\uf658\u3f90\u1fae\u76d5\u141c\u5dff\ufdd2\u58a8\u2a3f"

    invoke-static {v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/16 v0, 0x26

    const/16 v4, 0x2193

    const v5, 0xe0f7

    invoke-static {v0, v4, v5}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v4, "a"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, p0

    :goto_4
    :pswitch_1
    return-object v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->clone()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v0

    sget v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    add-int/lit8 v1, v0, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    instance-of v3, p1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_1

    add-int/lit8 p1, v0, 0x79

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_3

    :pswitch_1
    check-cast p1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    packed-switch p1, :pswitch_data_2

    return v2

    :pswitch_2
    return v1

    :cond_3
    return v2

    :goto_3
    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v0, v0, 0x2

    return v2

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

.method public final getBytes()[B
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    add-int/lit8 v1, v0, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    sget v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0x4b

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/16 v1, 0xa

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->e:Z

    return v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final length()I
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->d:[B

    array-length v0, v0

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final toHexString()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_1
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->b:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->a:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method
