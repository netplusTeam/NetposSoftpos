.class public Lorg/jpos/iso/packager/VISA1Packager;
.super Lorg/jpos/util/SimpleLogSource;
.source "VISA1Packager.java"

# interfaces
.implements Lorg/jpos/iso/ISOPackager;
.implements Lorg/jpos/iso/VISA1ResponseFilter;


# static fields
.field public static final FS:[B


# instance fields
.field badResultCode:Ljava/lang/String;

.field filter:Lorg/jpos/iso/VISA1ResponseFilter;

.field okPattern:Ljava/lang/String;

.field respField:I

.field sequence:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    sput-object v0, Lorg/jpos/iso/packager/VISA1Packager;->FS:[B

    return-void
.end method

.method public constructor <init>([IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sequence"    # [I
    .param p2, "respField"    # I
    .param p3, "badResultCode"    # Ljava/lang/String;
    .param p4, "okPattern"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lorg/jpos/util/SimpleLogSource;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/jpos/iso/packager/VISA1Packager;->sequence:[I

    .line 59
    iput p2, p0, Lorg/jpos/iso/packager/VISA1Packager;->respField:I

    .line 60
    iput-object p3, p0, Lorg/jpos/iso/packager/VISA1Packager;->badResultCode:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lorg/jpos/iso/packager/VISA1Packager;->okPattern:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p0}, Lorg/jpos/iso/packager/VISA1Packager;->setVISA1ResponseFilter(Lorg/jpos/iso/VISA1ResponseFilter;)V

    .line 63
    return-void
.end method


# virtual methods
.method public createISOMsg()Lorg/jpos/iso/ISOMsg;
    .locals 1

    .line 179
    new-instance v0, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDescription(Lorg/jpos/iso/ISOComponent;I)Ljava/lang/String;
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "fldNumber"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VISA 1 fld "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public guessAutNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 143
    const/4 v1, 0x0

    return-object v1

    .line 145
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-le v1, v3, :cond_3

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 147
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 148
    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 150
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected handleSpecialField35(Lorg/jpos/iso/ISOMsg;Ljava/io/ByteArrayOutputStream;)I
    .locals 7
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "bout"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "len":I
    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 73
    .local v2, "entryMode":[B
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 74
    aput-byte v1, v2, v5

    .line 75
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 76
    .local v1, "value":[B
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 77
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 78
    sget-object v3, Lorg/jpos/iso/packager/VISA1Packager;->FS:[B

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 79
    array-length v3, v1

    add-int/2addr v3, v6

    add-int/2addr v0, v3

    .line 80
    .end local v1    # "value":[B
    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1, v6}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    aput-byte v5, v2, v5

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "simulatedTrack2":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 85
    sget-object v3, Lorg/jpos/iso/packager/VISA1Packager;->FS:[B

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v6

    add-int/2addr v0, v3

    .line 88
    .end local v1    # "simulatedTrack2":Ljava/lang/String;
    :goto_0
    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 8
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "pack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 95
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 97
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    instance-of v2, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v2, :cond_5

    .line 101
    move-object v2, p1

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    .line 103
    .local v2, "m":Lorg/jpos/iso/ISOMsg;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/jpos/iso/packager/VISA1Packager;->sequence:[I

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 104
    aget v4, v4, v3

    .line 105
    .local v4, "fld":I
    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    .line 106
    invoke-virtual {p0, v2, v1}, Lorg/jpos/iso/packager/VISA1Packager;->handleSpecialField35(Lorg/jpos/iso/ISOMsg;Ljava/io/ByteArrayOutputStream;)I

    goto :goto_2

    .line 107
    :cond_0
    invoke-virtual {v2, v4}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 110
    invoke-virtual {v2, v5}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 111
    .local v5, "amt":J
    const/16 v7, 0xc

    invoke-static {v5, v6, v7}, Lorg/jpos/iso/ISOUtil;->formatAmount(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object v5, v7

    .line 112
    .local v5, "value":[B
    goto :goto_1

    .line 114
    .end local v5    # "value":[B
    :cond_1
    invoke-virtual {v2, v4}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 115
    .restart local v5    # "value":[B
    :goto_1
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    iget-object v6, p0, Lorg/jpos/iso/packager/VISA1Packager;->sequence:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_2

    .line 117
    sget-object v6, Lorg/jpos/iso/packager/VISA1Packager;->FS:[B

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 103
    .end local v4    # "fld":I
    .end local v5    # "value":[B
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 123
    .local v3, "d":[B
    iget-object v4, p0, Lorg/jpos/iso/packager/VISA1Packager;->logger:Lorg/jpos/util/Logger;

    if-eqz v4, :cond_4

    .line 124
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->dumpString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_4
    nop

    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 133
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 125
    return-object v3

    .line 98
    .end local v2    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v3    # "d":[B
    :cond_5
    :try_start_3
    new-instance v2, Lorg/jpos/iso/ISOException;

    const-string v3, "Can\'t call VISA1 packager on non ISOMsg"

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catchall_0
    move-exception v2

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :goto_3
    throw v3
    :try_end_6
    .catch Lorg/jpos/iso/ISOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 133
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catchall_3
    move-exception v1

    goto :goto_4

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "ex":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 131
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v2

    .line 126
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catch_1
    move-exception v1

    .line 127
    .local v1, "ex":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 128
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 133
    .end local v1    # "ex":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :goto_4
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 134
    throw v1
.end method

.method public setVISA1ResponseFilter(Lorg/jpos/iso/VISA1ResponseFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/jpos/iso/VISA1ResponseFilter;

    .line 65
    iput-object p1, p0, Lorg/jpos/iso/packager/VISA1Packager;->filter:Lorg/jpos/iso/VISA1ResponseFilter;

    .line 66
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 5
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 157
    .local v0, "response":Ljava/lang/String;
    new-instance v1, Lorg/jpos/iso/ISOField;

    iget v2, p0, Lorg/jpos/iso/packager/VISA1Packager;->respField:I

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 158
    new-instance v1, Lorg/jpos/iso/ISOField;

    iget-object v2, p0, Lorg/jpos/iso/packager/VISA1Packager;->badResultCode:Ljava/lang/String;

    const/16 v3, 0x27

    invoke-direct {v1, v3, v2}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 159
    iget-object v1, p0, Lorg/jpos/iso/packager/VISA1Packager;->okPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/jpos/iso/packager/VISA1Packager;->filter:Lorg/jpos/iso/VISA1ResponseFilter;

    invoke-interface {v1, v0}, Lorg/jpos/iso/VISA1ResponseFilter;->guessAutNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "autNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 162
    new-instance v2, Lorg/jpos/iso/ISOField;

    const-string v4, "00"

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 163
    new-instance v2, Lorg/jpos/iso/ISOField;

    const/16 v3, 0x26

    invoke-direct {v2, v3, v1}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 166
    .end local v1    # "autNumber":Ljava/lang/String;
    :cond_0
    array-length v1, p2

    return v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 169
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
