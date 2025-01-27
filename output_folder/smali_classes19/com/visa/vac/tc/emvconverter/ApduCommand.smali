.class public Lcom/visa/vac/tc/emvconverter/ApduCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static setTerminalData:I

.field private static setTerminate:I


# instance fields
.field private $$a:B

.field private BuildConfig:B

.field private ContactlessConfiguration:B

.field private ContactlessKernel:[B

.field private clear:B

.field private getInstance:B

.field private getTerminalData:B

.field private performTransaction:[B


# direct methods
.method private static $$a(Ljava/lang/String;)B
    .locals 6

    .line 40
    nop

    .line 33
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 40
    sget v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 33
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 40
    sget v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    add-int/lit8 v2, v2, 0x75

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 v2, v2, 0x2

    const-string v4, "("

    if-nez v2, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x27

    :try_start_0
    div-int/2addr v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 33
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 40
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/16 v2, 0x39

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_3
    goto :goto_4

    .line 34
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 40
    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 34
    :cond_5
    const-string v2, "0X"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 35
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getTerminalData(Ljava/lang/String;)B

    move-result p0

    return p0

    .line 36
    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_8

    .line 37
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getTerminalData(Ljava/lang/String;)B

    move-result p0

    .line 40
    sget v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    move v0, v3

    :cond_7
    packed-switch v0, :pswitch_data_2

    return p0

    :pswitch_2
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :cond_8
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
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

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/ApduScript;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getCLA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->ContactlessConfiguration:B

    .line 18
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getINS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getInstance:B

    .line 19
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getP1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->BuildConfig:B

    .line 20
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getP2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getTerminalData:B

    .line 21
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getLE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->clear:B

    .line 22
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getDATA()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getDATA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getDATA()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setDATA(Ljava/lang/String;)V

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getDATA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getDATA()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setDATA(Ljava/lang/String;)V

    .line 30
    :cond_1
    return-void
.end method

.method private static getTerminalData(Ljava/lang/String;)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 46
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 45
    const/16 v0, 0x21

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0x2948

    goto :goto_1

    .line 45
    :pswitch_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_1
    int-to-byte p0, p0

    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCLA()B
    .locals 3

    .line 73
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v1, v0, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-byte v1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->ContactlessConfiguration:B

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

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

.method public getCommand()[B
    .locals 9

    .line 65
    nop

    .line 51
    nop

    .line 52
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->performTransaction:[B

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_0

    .line 65
    const/16 v3, 0x21

    goto :goto_0

    :cond_0
    const/16 v3, 0x46

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v3, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    add-int/lit8 v3, v3, 0x5d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/2addr v3, v2

    if-nez v3, :cond_1

    .line 53
    :cond_1
    array-length v3, v0

    add-int/lit8 v3, v3, 0x6

    .line 65
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->ContactlessKernel:[B

    .line 56
    iget-byte v5, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->ContactlessConfiguration:B

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 57
    iget-byte v5, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getInstance:B

    const/4 v7, 0x1

    aput-byte v5, v4, v7

    .line 58
    iget-byte v5, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->BuildConfig:B

    aput-byte v5, v4, v2

    .line 59
    const/4 v5, 0x3

    iget-byte v8, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getTerminalData:B

    aput-byte v8, v4, v5

    .line 60
    const/4 v5, 0x4

    iget-byte v8, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a:B

    aput-byte v8, v4, v5

    .line 61
    if-eqz v0, :cond_3

    .line 65
    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v7

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 62
    array-length v5, v0

    int-to-short v5, v5

    invoke-static {v0, v6, v4, v1, v5}, Lcom/visa/vac/tc/emvconverter/Utils;->arrayCopy([BS[BSS)S

    .line 65
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 64
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->ContactlessKernel:[B

    sub-int/2addr v3, v7

    iget-byte v1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->clear:B

    aput-byte v1, v0, v3

    .line 65
    return-object v0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getDATA()[B
    .locals 3

    .line 113
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->performTransaction:[B

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getINS()B
    .locals 3

    .line 81
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-byte v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getInstance:B

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public getLC()B
    .locals 6

    .line 105
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-byte v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a:B

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v0

    :goto_3
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getLE()B
    .locals 3

    .line 127
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-byte v0, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->clear:B

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public getP1()B
    .locals 5

    .line 89
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-byte v1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->BuildConfig:B

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    return v1

    :pswitch_1
    const/16 v0, 0x5e

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    const/4 v0, 0x0

    :try_start_1
    throw v0
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
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getP2()B
    .locals 3

    .line 97
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-byte v1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getTerminalData:B

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public setCLA(B)V
    .locals 2

    .line 77
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->ContactlessConfiguration:B

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public setCommand()V
    .locals 2

    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setDATA(Ljava/lang/String;)V
    .locals 2

    .line 123
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 122
    :cond_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->performTransaction:[B

    .line 123
    array-length p1, p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a:B

    sget p1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x26

    goto :goto_0

    :cond_1
    const/16 p1, 0x44

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public setDATA([B)V
    .locals 3

    .line 118
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v1, v0, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->performTransaction:[B

    .line 118
    array-length p1, p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a:B

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setINS(B)V
    .locals 2

    .line 85
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getInstance:B

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x43

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setLC(B)V
    .locals 3

    .line 109
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v1, v0, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->$$a:B

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setLE(B)V
    .locals 3

    .line 131
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->clear:B

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x48

    goto :goto_2

    :cond_1
    const/16 p1, 0x18

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1
    .end packed-switch
.end method

.method public setP1(B)V
    .locals 3

    .line 93
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    add-int/lit8 v1, v0, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->BuildConfig:B

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setP2(B)V
    .locals 4

    .line 101
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-byte p1, p0, Lcom/visa/vac/tc/emvconverter/ApduCommand;->getTerminalData:B

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduCommand;->setTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x63

    :try_start_1
    div-int/2addr p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
