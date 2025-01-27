.class public Lcom/dspread/xpos/l0;
.super Ljava/lang/Object;
.source "Signature.java"


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/l0;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method private a([BLjava/io/File;II)V
    .locals 2

    .line 33
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 36
    new-instance p2, Ljava/lang/String;

    const-string v1, "BM"

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    array-length p2, p1

    const/16 v1, 0x3e

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 39
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 40
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 41
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 43
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 44
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 46
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 47
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 50
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 51
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 52
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    const/16 v1, 0x28

    .line 55
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 56
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 57
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 58
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 60
    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 61
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 62
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 63
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    neg-int p3, p4

    .line 66
    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    shr-int/lit8 p4, p3, 0x8

    .line 67
    invoke-virtual {v0, p4}, Ljava/io/FileOutputStream;->write(I)V

    shr-int/lit8 p4, p3, 0x10

    .line 68
    invoke-virtual {v0, p4}, Ljava/io/FileOutputStream;->write(I)V

    shr-int/lit8 p3, p3, 0x18

    .line 69
    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 71
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 72
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 74
    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 75
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 77
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 78
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 79
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 80
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 82
    array-length p3, p1

    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 83
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 84
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 85
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 87
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 88
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 89
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 90
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 92
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 93
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 94
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 95
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 97
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 98
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 99
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 100
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 102
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 103
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 104
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 105
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 108
    const/16 p3, 0xff

    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 109
    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 110
    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 111
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 113
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 114
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 115
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 116
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 119
    array-length p3, p1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 120
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 122
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    const-string p1, "IOException"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 128
    const-string p1, "FileNotFoundException"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/io/File;)[B
    .locals 4

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 30
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    new-array v0, p1, [B

    .line 32
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Vpos;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x41

    const/16 v2, 0x40

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 4
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/l0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/dspread/xpos/l0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->b([B)V

    :cond_0
    return-void
.end method
