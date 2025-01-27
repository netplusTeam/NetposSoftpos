.class public Lcom/itextpdf/kernel/log/DefaultCounter;
.super Ljava/lang/Object;
.source "DefaultCounter.java"

# interfaces
.implements Lcom/itextpdf/kernel/log/ICounter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static message_1:[B

.field private static message_2:[B


# instance fields
.field private volatile count:I

.field private level:I

.field private logger:Lorg/slf4j/Logger;

.field private final repeat:[I

.field private repeat_level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "DQoNCllvdSBhcmUgdXNpbmcgaVRleHQgdW5kZXIgdGhlIEFHUEwuDQoNCklmIHRoaXMgaXMgeW91ciBpbnRlbnRpb24sIHlvdSBoYXZlIHB1Ymxpc2hlZCB5b3VyIG93biBzb3VyY2UgY29kZSBhcyBBR1BMIHNvZnR3YXJlIHRvby4NClBsZWFzZSBsZXQgdXMga25vdyB3aGVyZSB0byBmaW5kIHlvdXIgc291cmNlIGNvZGUgYnkgc2VuZGluZyBhIG1haWwgdG8gYWdwbEBpdGV4dHBkZi5jb20NCldlJ2QgYmUgaG9ub3JlZCB0byBhZGQgaXQgdG8gb3VyIGxpc3Qgb2YgQUdQTCBwcm9qZWN0cyBidWlsdCBvbiB0b3Agb2YgaVRleHQgb3IgaVRleHRTaGFycA0KYW5kIHdlJ2xsIGV4cGxhaW4gaG93IHRvIHJlbW92ZSB0aGlzIG1lc3NhZ2UgZnJvbSB5b3VyIGVycm9yIGxvZ3MuDQoNCklmIHRoaXMgd2Fzbid0IHlvdXIgaW50ZW50aW9uLCB5b3UgYXJlIHByb2JhYmx5IHVzaW5nIGlUZXh0IGluIGEgbm9uLWZyZWUgZW52aXJvbm1lbnQuDQpJbiB0aGlzIGNhc2UsIHBsZWFzZSBjb250YWN0IHVzIGJ5IGZpbGxpbmcgb3V0IHRoaXMgZm9ybTogaHR0cDovL2l0ZXh0cGRmLmNvbS9zYWxlcw0KSWYgeW91IGFyZSBhIGN1c3RvbWVyLCB3ZSdsbCBleHBsYWluIGhvdyB0byBpbnN0YWxsIHlvdXIgbGljZW5zZSBrZXkgdG8gYXZvaWQgdGhpcyBtZXNzYWdlLg0KSWYgeW91J3JlIG5vdCBhIGN1c3RvbWVyLCB3ZSdsbCBleHBsYWluIHRoZSBiZW5lZml0cyBvZiBiZWNvbWluZyBhIGN1c3RvbWVyLg0KDQo="

    invoke-static {v0}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/log/DefaultCounter;->message_1:[B

    .line 84
    const-string v0, "WW91ciBsaWNlbnNlIGhhcyBleHBpcmVkISBZb3UgYXJlIG5vdyB1c2luZyBpVGV4dCB1bmRlciB0aGUgQUdQTC4NCg0KSWYgdGhpcyBpcyB5b3VyIGludGVudGlvbiwgeW91IHNob3VsZCBoYXZlIHB1Ymxpc2hlZCB5b3VyIG93biBzb3VyY2UgY29kZSBhcyBBR1BMIHNvZnR3YXJlIHRvby4NClBsZWFzZSBsZXQgdXMga25vdyB3aGVyZSB0byBmaW5kIHlvdXIgc291cmNlIGNvZGUgYnkgc2VuZGluZyBhIG1haWwgdG8gYWdwbEBpdGV4dHBkZi5jb20NCldlJ2QgYmUgaG9ub3JlZCB0byBhZGQgaXQgdG8gb3VyIGxpc3Qgb2YgQUdQTCBwcm9qZWN0cyBidWlsdCBvbiB0b3Agb2YgaVRleHQgb3IgaVRleHRTaGFycA0KYW5kIHdlJ2xsIGV4cGxhaW4gaG93IHRvIHJlbW92ZSB0aGlzIG1lc3NhZ2UgZnJvbSB5b3VyIGVycm9yIGxvZ3MuDQoNCklmIHRoaXMgd2Fzbid0IHlvdXIgaW50ZW50aW9uLCBwbGVhc2UgY29udGFjdCB1cyBieSBmaWxsaW5nIG91dCB0aGlzIGZvcm06IGh0dHA6Ly9pdGV4dHBkZi5jb20vc2FsZXMgb3IgYnkgY29udGFjdGluZyBvdXIgc2FsZXMgZGVwYXJ0bWVudC4="

    invoke-static {v0}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/log/DefaultCounter;->message_2:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->count:I

    .line 61
    iput v0, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->level:I

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->repeat:[I

    .line 63
    const/16 v0, 0x2710

    iput v0, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->repeat_level:I

    return-void

    nop

    :array_0
    .array-data 4
        0x2710
        0x1388
        0x3e8
    .end array-data
.end method

.method private plusOne()V
    .locals 5

    .line 109
    iget v0, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->count:I

    iget v2, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->repeat_level:I

    if-le v0, v2, :cond_5

    .line 110
    invoke-static {}, Lcom/itextpdf/kernel/Version;->isAGPLVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/itextpdf/kernel/Version;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/itextpdf/kernel/log/DefaultCounter;->message_1:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 113
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/itextpdf/kernel/Version;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/itextpdf/kernel/log/DefaultCounter;->message_2:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v2

    .line 117
    :cond_1
    iget v2, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->level:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->level:I

    .line 118
    if-ne v2, v1, :cond_2

    .line 119
    iget-object v2, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->repeat:[I

    aget v1, v2, v1

    iput v1, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->repeat_level:I

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->repeat:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->repeat_level:I

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->logger:Lorg/slf4j/Logger;

    if-nez v1, :cond_3

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->logger:Lorg/slf4j/Logger;

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 128
    .end local v0    # "message":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/log/DefaultCounter;->count:I

    .line 130
    :cond_5
    return-void
.end method


# virtual methods
.method public onDocumentRead(J)V
    .locals 0
    .param p1, "size"    # J

    .line 100
    invoke-direct {p0}, Lcom/itextpdf/kernel/log/DefaultCounter;->plusOne()V

    .line 101
    return-void
.end method

.method public onDocumentWritten(J)V
    .locals 0
    .param p1, "size"    # J

    .line 105
    invoke-direct {p0}, Lcom/itextpdf/kernel/log/DefaultCounter;->plusOne()V

    .line 106
    return-void
.end method
