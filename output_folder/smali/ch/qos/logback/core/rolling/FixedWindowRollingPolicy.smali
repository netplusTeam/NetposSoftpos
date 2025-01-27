.class public Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;
.super Lch/qos/logback/core/rolling/RollingPolicyBase;
.source "FixedWindowRollingPolicy.java"


# static fields
.field static final FNP_NOT_SET:Ljava/lang/String; = "The \"FileNamePattern\" property must be set before using FixedWindowRollingPolicy. "

.field private static MAX_WINDOW_SIZE:I = 0x0

.field static final PRUDENT_MODE_UNSUPPORTED:Ljava/lang/String; = "See also http://logback.qos.ch/codes.html#tbr_fnp_prudent_unsupported"

.field static final SEE_PARENT_FN_NOT_SET:Ljava/lang/String; = "Please refer to http://logback.qos.ch/codes.html#fwrp_parentFileName_not_set"

.field public static final ZIP_ENTRY_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd_HHmm"


# instance fields
.field compressor:Lch/qos/logback/core/rolling/helper/Compressor;

.field maxIndex:I

.field minIndex:I

.field util:Lch/qos/logback/core/rolling/helper/RenameUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0x14

    sput v0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->MAX_WINDOW_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lch/qos/logback/core/rolling/RollingPolicyBase;-><init>()V

    .line 39
    new-instance v0, Lch/qos/logback/core/rolling/helper/RenameUtil;

    invoke-direct {v0}, Lch/qos/logback/core/rolling/helper/RenameUtil;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->util:Lch/qos/logback/core/rolling/helper/RenameUtil;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    .line 51
    const/4 v0, 0x7

    iput v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    .line 52
    return-void
.end method

.method private transformFileNamePatternFromInt2Date(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileNamePatternStr"    # Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->slashify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "slashified":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->afterLastSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "stemOfFileNamePattern":Ljava/lang/String;
    const-string v2, "%i"

    const-string v3, "%d{yyyy-MM-dd_HHmm}"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getActiveFileName()Ljava/lang/String;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->getParentsRawFileProperty()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIndex()I
    .locals 1

    .line 169
    iget v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    return v0
.end method

.method protected getMaxWindowSize()I
    .locals 1

    .line 112
    sget v0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->MAX_WINDOW_SIZE:I

    return v0
.end method

.method public getMinIndex()I
    .locals 1

    .line 173
    iget v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    return v0
.end method

.method public rollover()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/rolling/RolloverFailure;
        }
    .end annotation

    .line 126
    iget v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    if-ltz v0, :cond_3

    .line 128
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    invoke-virtual {v1, v2}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    :cond_0
    iget v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    if-lt v1, v2, :cond_2

    .line 136
    iget-object v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v2, v1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertInt(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "toRenameStr":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, "toRename":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    iget-object v4, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->util:Lch/qos/logback/core/rolling/helper/RenameUtil;

    iget-object v5, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertInt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lch/qos/logback/core/rolling/helper/RenameUtil;->rename(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping roll-over for inexistent file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addInfo(Ljava/lang/String;)V

    .line 135
    .end local v2    # "toRenameStr":Ljava/lang/String;
    .end local v3    # "toRename":Ljava/io/File;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$CompressionMode:[I

    iget-object v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    invoke-virtual {v2}, Lch/qos/logback/core/rolling/helper/CompressionMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 155
    :pswitch_0
    iget-object v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->compressor:Lch/qos/logback/core/rolling/helper/Compressor;

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->getActiveFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget v4, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    invoke-virtual {v3, v4}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertInt(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->zipEntryFileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lch/qos/logback/core/rolling/helper/Compressor;->compress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :pswitch_1
    iget-object v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->compressor:Lch/qos/logback/core/rolling/helper/Compressor;

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->getActiveFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget v4, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    invoke-virtual {v3, v4}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertInt(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lch/qos/logback/core/rolling/helper/Compressor;->compress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    goto :goto_2

    .line 149
    :pswitch_2
    iget-object v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->util:Lch/qos/logback/core/rolling/helper/RenameUtil;

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->getActiveFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget v4, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    invoke-virtual {v3, v4}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convertInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/rolling/helper/RenameUtil;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxIndex(I)V
    .locals 0
    .param p1, "maxIndex"    # I

    .line 177
    iput p1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    .line 178
    return-void
.end method

.method public setMinIndex(I)V
    .locals 0
    .param p1, "minIndex"    # I

    .line 181
    iput p1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    .line 182
    return-void
.end method

.method public start()V
    .locals 5

    .line 55
    iget-object v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->util:Lch/qos/logback/core/rolling/helper/RenameUtil;

    iget-object v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/helper/RenameUtil;->setContext(Lch/qos/logback/core/Context;)V

    .line 57
    iget-object v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePatternStr:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 58
    new-instance v0, Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget-object v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePatternStr:Ljava/lang/String;

    iget-object v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->context:Lch/qos/logback/core/Context;

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/rolling/helper/FileNamePattern;-><init>(Ljava/lang/String;Lch/qos/logback/core/Context;)V

    iput-object v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    .line 59
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->determineCompressionMode()V

    .line 66
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->isParentPrudent()Z

    move-result v0

    if-nez v0, :cond_5

    .line 72
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->getParentsRawFileProperty()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 78
    iget v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    iget v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    if-ge v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxIndex ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cannot be smaller than MinIndex ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addWarn(Ljava/lang/String;)V

    .line 80
    const-string v0, "Setting maxIndex to equal minIndex."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addWarn(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    iput v0, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    .line 84
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->getMaxWindowSize()I

    move-result v0

    .line 85
    .local v0, "maxWindowSize":I
    iget v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    iget v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_1

    .line 86
    const-string v1, "Large window sizes are not allowed."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addWarn(Ljava/lang/String;)V

    .line 87
    iget v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->minIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxIndex reduced to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->maxIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addWarn(Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getIntegerTokenConverter()Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    move-result-object v1

    .line 93
    .local v1, "itc":Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;
    if-eqz v1, :cond_3

    .line 97
    iget-object v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    sget-object v3, Lch/qos/logback/core/rolling/helper/CompressionMode;->ZIP:Lch/qos/logback/core/rolling/helper/CompressionMode;

    if-ne v2, v3, :cond_2

    .line 98
    iget-object v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePatternStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->transformFileNamePatternFromInt2Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "zipEntryFileNamePatternStr":Ljava/lang/String;
    new-instance v3, Lch/qos/logback/core/rolling/helper/FileNamePattern;

    iget-object v4, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->context:Lch/qos/logback/core/Context;

    invoke-direct {v3, v2, v4}, Lch/qos/logback/core/rolling/helper/FileNamePattern;-><init>(Ljava/lang/String;Lch/qos/logback/core/Context;)V

    iput-object v3, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->zipEntryFileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    .line 101
    .end local v2    # "zipEntryFileNamePatternStr":Ljava/lang/String;
    :cond_2
    new-instance v2, Lch/qos/logback/core/rolling/helper/Compressor;

    iget-object v3, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    invoke-direct {v2, v3}, Lch/qos/logback/core/rolling/helper/Compressor;-><init>(Lch/qos/logback/core/rolling/helper/CompressionMode;)V

    iput-object v2, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->compressor:Lch/qos/logback/core/rolling/helper/Compressor;

    .line 102
    iget-object v3, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v2, v3}, Lch/qos/logback/core/rolling/helper/Compressor;->setContext(Lch/qos/logback/core/Context;)V

    .line 103
    invoke-super {p0}, Lch/qos/logback/core/rolling/RollingPolicyBase;->start()V

    .line 104
    return-void

    .line 94
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNamePattern ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    invoke-virtual {v4}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] does not contain a valid IntegerToken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    .end local v0    # "maxWindowSize":I
    .end local v1    # "itc":Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;
    :cond_4
    const-string v0, "The File name property must be set before using this rolling policy."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addError(Ljava/lang/String;)V

    .line 74
    const-string v0, "Please refer to http://logback.qos.ch/codes.html#fwrp_parentFileName_not_set"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addError(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The \"File\" option must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_5
    const-string v0, "Prudent mode is not supported with FixedWindowRollingPolicy."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addError(Ljava/lang/String;)V

    .line 68
    const-string v0, "See also http://logback.qos.ch/codes.html#tbr_fnp_prudent_unsupported"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addError(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prudent mode is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_6
    const-string v0, "The \"FileNamePattern\" property must be set before using FixedWindowRollingPolicy. "

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addError(Ljava/lang/String;)V

    .line 62
    const-string v0, "See also http://logback.qos.ch/codes.html#tbr_fnp_not_set"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/FixedWindowRollingPolicy;->addError(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The \"FileNamePattern\" property must be set before using FixedWindowRollingPolicy. See also http://logback.qos.ch/codes.html#tbr_fnp_not_set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
