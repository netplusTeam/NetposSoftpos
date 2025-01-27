.class public Lnet/sf/scuba/smartcards/CardServiceException;
.super Ljava/lang/Exception;
.source "CardServiceException.java"


# static fields
.field public static final SW_NONE:I = -0x1

.field private static final serialVersionUID:J = 0x3e4cafc647596f7fL


# instance fields
.field private final sw:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "sw"    # I

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    iput p2, p0, Lnet/sf/scuba/smartcards/CardServiceException;->sw:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 71
    invoke-static {p2}, Lnet/sf/scuba/smartcards/CardServiceException;->getSW(Ljava/lang/Throwable;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "sw"    # I

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    iput p3, p0, Lnet/sf/scuba/smartcards/CardServiceException;->sw:I

    .line 84
    return-void
.end method

.method private static getSW(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 110
    instance-of v0, p0, Lnet/sf/scuba/smartcards/CardServiceException;

    if-eqz v0, :cond_0

    .line 111
    move-object v0, p0

    check-cast v0, Lnet/sf/scuba/smartcards/CardServiceException;

    invoke-virtual {v0}, Lnet/sf/scuba/smartcards/CardServiceException;->getSW()I

    move-result v0

    return v0

    .line 114
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static statusWordToString(S)Ljava/lang/String;
    .locals 3
    .param p0, "sw"    # S

    .line 118
    sparse-switch p0, :sswitch_data_0

    .line 178
    const v0, 0xff00

    and-int v1, p0, v0

    const/16 v2, 0x6100

    if-ne v1, v2, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BYTES REMAINING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :sswitch_0
    const-string v0, "CARD TERMINATED"

    return-object v0

    .line 172
    :sswitch_1
    const-string v0, "UNKNOWN"

    return-object v0

    .line 170
    :sswitch_2
    const-string v0, "CLA NOT SUPPORTED"

    return-object v0

    .line 168
    :sswitch_3
    const-string v0, "INS NOT SUPPORTED"

    return-object v0

    .line 166
    :sswitch_4
    const-string v0, "WRONG P1P2"

    return-object v0

    .line 164
    :sswitch_5
    const-string v0, "KEY NOT FOUND"

    return-object v0

    .line 162
    :sswitch_6
    const-string v0, "INCORRECT P1P2"

    return-object v0

    .line 160
    :sswitch_7
    const-string v0, "OUT OF MEMORY or FILE FULL"

    return-object v0

    .line 157
    :sswitch_8
    const-string v0, "RECORD NOT FOUND"

    return-object v0

    .line 155
    :sswitch_9
    const-string v0, "FILE NOT FOUND"

    return-object v0

    .line 153
    :sswitch_a
    const-string v0, "FUNC NOT SUPPORTED"

    return-object v0

    .line 151
    :sswitch_b
    const-string v0, "WRONG DATA or FILEHEADER INCONSISTENT"

    return-object v0

    .line 148
    :sswitch_c
    const-string v0, "KEY USAGE ERROR"

    return-object v0

    .line 146
    :sswitch_d
    const-string v0, "APPLET SELECT FAILED"

    return-object v0

    .line 144
    :sswitch_e
    const-string v0, "SM DATA OBJECTS INCORRECT"

    return-object v0

    .line 142
    :sswitch_f
    const-string v0, "EXPECTED SM DATA OBJECTS MISSING"

    return-object v0

    .line 140
    :sswitch_10
    const-string v0, "COMMAND NOT ALLOWED"

    return-object v0

    .line 138
    :sswitch_11
    const-string v0, "CONDITIONS NOT SATISFIED"

    return-object v0

    .line 136
    :sswitch_12
    const-string v0, "DATA INVALID"

    return-object v0

    .line 134
    :sswitch_13
    const-string v0, "FILE INVALID"

    return-object v0

    .line 132
    :sswitch_14
    const-string v0, "SECURITY STATUS NOT SATISFIED"

    return-object v0

    .line 130
    :sswitch_15
    const-string v0, "LAST COMMAND EXPECTED"

    return-object v0

    .line 128
    :sswitch_16
    const-string v0, "SECURE MESSAGING NOT SUPPORTED"

    return-object v0

    .line 126
    :sswitch_17
    const-string v0, "LOGICAL CHANNEL NOT SUPPORTED"

    return-object v0

    .line 124
    :sswitch_18
    const-string v0, "WRONG LENGTH"

    return-object v0

    .line 122
    :sswitch_19
    const-string v0, "LESS DATA RESPONDED THAN REQUESTED"

    return-object v0

    .line 120
    :sswitch_1a
    const-string v0, "END OF FILE"

    return-object v0

    .line 176
    :sswitch_1b
    const-string v0, "NO ERROR"

    return-object v0

    .line 182
    :cond_0
    and-int/2addr v0, p0

    const/16 v1, 0x6c00

    if-ne v0, v1, :cond_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CORRECT LENGTH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    const v0, 0xfff0

    and-int/2addr v0, p0

    const/16 v1, 0x63c0

    if-ne v0, v1, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NON VOLATILE MEMORY CHANGED COUNT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p0, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_2
    const-string v0, "Unknown"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7000 -> :sswitch_1b
        0x6282 -> :sswitch_1a
        0x6287 -> :sswitch_19
        0x6700 -> :sswitch_18
        0x6881 -> :sswitch_17
        0x6882 -> :sswitch_16
        0x6883 -> :sswitch_15
        0x6982 -> :sswitch_14
        0x6983 -> :sswitch_13
        0x6984 -> :sswitch_12
        0x6985 -> :sswitch_11
        0x6986 -> :sswitch_10
        0x6987 -> :sswitch_f
        0x6988 -> :sswitch_e
        0x6999 -> :sswitch_d
        0x69c1 -> :sswitch_c
        0x6a80 -> :sswitch_b
        0x6a81 -> :sswitch_a
        0x6a82 -> :sswitch_9
        0x6a83 -> :sswitch_8
        0x6a84 -> :sswitch_7
        0x6a86 -> :sswitch_6
        0x6a88 -> :sswitch_5
        0x6b00 -> :sswitch_4
        0x6d00 -> :sswitch_3
        0x6e00 -> :sswitch_2
        0x6f00 -> :sswitch_1
        0x6fff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 93
    iget v0, p0, Lnet/sf/scuba/smartcards/CardServiceException;->sw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (SW = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sf/scuba/smartcards/CardServiceException;->sw:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sf/scuba/smartcards/CardServiceException;->sw:I

    int-to-short v1, v1

    invoke-static {v1}, Lnet/sf/scuba/smartcards/CardServiceException;->statusWordToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSW()I
    .locals 1

    .line 106
    iget v0, p0, Lnet/sf/scuba/smartcards/CardServiceException;->sw:I

    return v0
.end method
