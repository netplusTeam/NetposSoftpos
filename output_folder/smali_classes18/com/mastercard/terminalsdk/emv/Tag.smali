.class public final Lcom/mastercard/terminalsdk/emv/Tag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mastercard/terminalsdk/emv/Tag$Format;,
        Lcom/mastercard/terminalsdk/emv/Tag$Source;,
        Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;,
        Lcom/mastercard/terminalsdk/emv/Tag$Rule;
    }
.end annotation


# static fields
.field private static l:I

.field private static n:[C

.field private static p:Z

.field private static q:I

.field private static s:I

.field private static t:Z


# instance fields
.field private a:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field private b:I

.field private c:[B

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Z

.field private h:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

.field private i:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

.field private j:I

.field private k:Z

.field private m:Z

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    const/4 v1, 0x1

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    sput-boolean v1, Lcom/mastercard/terminalsdk/emv/Tag;->p:Z

    const/16 v2, 0x109

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->l:I

    sput-boolean v1, Lcom/mastercard/terminalsdk/emv/Tag;->t:Z

    new-array v1, v1, [C

    const/16 v2, 0x136

    aput-char v2, v1, v0

    sput-object v1, Lcom/mastercard/terminalsdk/emv/Tag;->n:[C

    return-void
.end method

.method public constructor <init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    sget-object v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->ACT:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->DET:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->K:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->RA:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->h:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "\u0081"

    const/16 v4, 0x7f

    invoke-static {v1, v1, v3, v4}, Lcom/mastercard/terminalsdk/emv/Tag;->a(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->f:[Ljava/lang/String;

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->NONE:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->i:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    iput-object p1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->c:[B

    iput-object p2, p0, Lcom/mastercard/terminalsdk/emv/Tag;->a:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    iput p3, p0, Lcom/mastercard/terminalsdk/emv/Tag;->d:I

    iput p4, p0, Lcom/mastercard/terminalsdk/emv/Tag;->j:I

    invoke-static {p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result p1

    iput p1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->b:I

    iput-object p5, p0, Lcom/mastercard/terminalsdk/emv/Tag;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    iput-object p6, p0, Lcom/mastercard/terminalsdk/emv/Tag;->f:[Ljava/lang/String;

    iput-object p7, p0, Lcom/mastercard/terminalsdk/emv/Tag;->i:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    iput-object p8, p0, Lcom/mastercard/terminalsdk/emv/Tag;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    iput-object p6, p0, Lcom/mastercard/terminalsdk/emv/Tag;->f:[Ljava/lang/String;

    iput-object p7, p0, Lcom/mastercard/terminalsdk/emv/Tag;->i:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    iput-object p8, p0, Lcom/mastercard/terminalsdk/emv/Tag;->o:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/mastercard/terminalsdk/emv/Tag;->m:Z

    return-void
.end method

.method public constructor <init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;Ljava/lang/String;)V

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/mastercard/terminalsdk/emv/Tag;->h:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    return-void
.end method

.method public constructor <init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;Ljava/lang/String;Z)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;[Ljava/lang/String;Lcom/mastercard/terminalsdk/emv/Tag$Rule;Ljava/lang/String;)V

    move-object/from16 v0, p8

    iput-object v0, v9, Lcom/mastercard/terminalsdk/emv/Tag;->h:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    move/from16 v0, p10

    iput-boolean v0, v9, Lcom/mastercard/terminalsdk/emv/Tag;->m:Z

    return-void
.end method

.method private static a(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;
    .locals 7

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    if-eqz p2, :cond_1

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    const/16 v1, 0x56

    goto :goto_2

    :cond_1
    const/16 v1, 0x45

    :goto_2
    packed-switch v1, :pswitch_data_1

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "ISO-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :pswitch_1
    check-cast p2, [B

    if-eqz p0, :cond_2

    move v0, v2

    goto :goto_3

    :cond_2
    move v0, v3

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_4
    check-cast p0, [C

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag;->n:[C

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag;->l:I

    sget-boolean v4, Lcom/mastercard/terminalsdk/emv/Tag;->p:Z

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_5

    :cond_3
    move v4, v2

    :goto_5
    packed-switch v4, :pswitch_data_3

    sget p0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 p0, p0, 0x2

    goto/16 :goto_c

    :pswitch_3
    sget-boolean p2, Lcom/mastercard/terminalsdk/emv/Tag;->t:Z

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_6

    :cond_4
    move p2, v3

    :goto_6
    packed-switch p2, :pswitch_data_4

    sget p1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_a

    :pswitch_4
    array-length p0, p1

    new-array p2, p0, [C

    move v4, v2

    :goto_7
    if-ge v4, p0, :cond_5

    move v5, v2

    goto :goto_8

    :cond_5
    move v5, v3

    :goto_8
    packed-switch v5, :pswitch_data_5

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    goto :goto_9

    :pswitch_5
    sget v5, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v5, v5, 0x13

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    shr-int/lit8 v5, p0, 0x0

    shl-int/2addr v5, v4

    aget v5, p1, v5

    add-int/2addr v5, p3

    aget-char v5, v0, v5

    ushr-int/2addr v5, v1

    int-to-char v5, v5

    aput-char v5, p2, v4

    add-int/lit8 v4, v4, 0xf

    goto :goto_7

    :cond_6
    add-int/lit8 v5, p0, -0x1

    sub-int/2addr v5, v4

    aget v5, p1, v5

    sub-int/2addr v5, p3

    aget-char v5, v0, v5

    sub-int/2addr v5, v1

    int-to-char v5, v5

    aput-char v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :goto_9
    sget p1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :goto_a
    array-length p1, p0

    new-array p2, p1, [C

    :goto_b
    if-ge v2, p1, :cond_7

    sget v3, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v3, v3, 0x23

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v3, v2

    aget-char v3, p0, v3

    sub-int/2addr v3, p3

    aget-char v3, v0, v3

    sub-int/2addr v3, v1

    int-to-char v3, v3

    aput-char v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :goto_c
    array-length p0, p2

    new-array p1, p0, [C

    :goto_d
    if-ge v2, p0, :cond_8

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v2

    aget-byte v3, p2, v3

    add-int/2addr v3, p3

    aget-char v3, v0, v3

    sub-int/2addr v3, v1

    int-to-char v3, v3

    aput-char v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final clone()Lcom/mastercard/terminalsdk/emv/Tag;
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x59

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/emv/Tag;

    goto :goto_2

    :goto_1
    check-cast v0, Lcom/mastercard/terminalsdk/emv/Tag;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    move-object v0, p0

    :goto_2
    sget v3, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/emv/Tag;->clone()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/emv/Tag;->clone()Lcom/mastercard/terminalsdk/emv/Tag;

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public getError()Ljava/lang/String;
    .locals 6

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v1, v0, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->o:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v1

    :goto_2
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_3
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

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

.method public final getFormat()Lcom/mastercard/terminalsdk/emv/Tag$Format;
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->a:Lcom/mastercard/terminalsdk/emv/Tag$Format;

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaxLen()I
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v1, v0, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    iget v1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->j:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMinLen()I
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->d:I

    goto :goto_1

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

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final getNTag()I
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->b:I

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getName()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x5e

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->e:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->e:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v3, 0xe

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    :goto_3
    packed-switch v0, :pswitch_data_1

    return-object v1

    :pswitch_1
    const/16 v0, 0x3f

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public final getRuleToApply()Lcom/mastercard/terminalsdk/emv/Tag$Rule;
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x4b

    goto :goto_0

    :cond_0
    const/16 v1, 0x60

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->i:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v1

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public final getTag()[B
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->c:[B

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->c:[B

    const/16 v3, 0x62

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x2d

    goto :goto_2

    :cond_1
    const/16 v1, 0x55

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
    .end packed-switch
.end method

.method public final getTemplate()[Ljava/lang/String;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->f:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

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

.method public final getUpdateSources()[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v1, v0, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->h:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public final isKnown()Z
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->g:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->g:Z

    goto :goto_2

    :goto_1
    const/16 v2, 0x31

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x3

    goto :goto_3

    :cond_1
    const/16 v1, 0x5b

    :goto_3
    packed-switch v1, :pswitch_data_1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method public final isMandatory()Z
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->m:Z

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x4c

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v1, 0x6

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch
.end method

.method public final isPresent()Z
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x23

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->k:Z

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

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method

.method public final setIsKnown(Z)V
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->g:Z

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public final setUpdateSources([Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;)V
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v1, v0, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v1, v1, 0x2

    iput-object p1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->h:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public final toHexString()Ljava/lang/String;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/mastercard/terminalsdk/emv/Tag;->c:[B

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final toIndentedString(I)Ljava/lang/String;
    .locals 2

    sget p1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 p1, p1, 0x2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/mastercard/terminalsdk/emv/Tag;->toIndentedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateIsPresent(Z)V
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag;->s:I

    add-int/lit8 v1, v0, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v1, v1, 0x2

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/emv/Tag;->k:Z

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/emv/Tag;->q:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
