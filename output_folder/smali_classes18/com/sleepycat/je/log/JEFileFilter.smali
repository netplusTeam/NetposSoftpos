.class Lcom/sleepycat/je/log/JEFileFilter;
.super Ljava/lang/Object;
.source "JEFileFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field maxFileNumber:J

.field minFileNumber:J

.field suffix:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "suffix"    # [Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/log/JEFileFilter;->minFileNumber:J

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/JEFileFilter;->maxFileNumber:J

    .line 29
    iput-object p1, p0, Lcom/sleepycat/je/log/JEFileFilter;->suffix:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method constructor <init>([Ljava/lang/String;J)V
    .locals 2
    .param p1, "suffix"    # [Ljava/lang/String;
    .param p2, "maxFileNumber"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/log/JEFileFilter;->minFileNumber:J

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/JEFileFilter;->maxFileNumber:J

    .line 37
    iput-object p1, p0, Lcom/sleepycat/je/log/JEFileFilter;->suffix:[Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Lcom/sleepycat/je/log/JEFileFilter;->maxFileNumber:J

    .line 39
    return-void
.end method

.method constructor <init>([Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "suffix"    # [Ljava/lang/String;
    .param p2, "minFileNumber"    # J
    .param p4, "maxFileNumber"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/log/JEFileFilter;->minFileNumber:J

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/JEFileFilter;->maxFileNumber:J

    .line 48
    iput-object p1, p0, Lcom/sleepycat/je/log/JEFileFilter;->suffix:[Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lcom/sleepycat/je/log/JEFileFilter;->minFileNumber:J

    .line 50
    iput-wide p4, p0, Lcom/sleepycat/je/log/JEFileFilter;->maxFileNumber:J

    .line 51
    return-void
.end method

.method private matches(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileSuffix"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/log/JEFileFilter;->suffix:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 55
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 13
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "ok":Z
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 70
    .local v3, "nTokens":I
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    if-ne v3, v4, :cond_6

    .line 71
    :cond_0
    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 72
    .local v4, "hasVersion":Z
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "fileNumber":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "fileSuffix":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 77
    .local v6, "fileVersion":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    .line 78
    invoke-direct {p0, v2}, Lcom/sleepycat/je/log/JEFileFilter;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 83
    const/16 v7, 0x10

    :try_start_0
    invoke-static {v5, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 84
    .local v7, "fileNum":J
    iget-wide v9, p0, Lcom/sleepycat/je/log/JEFileFilter;->minFileNumber:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_3

    .line 85
    const/4 v0, 0x0

    goto :goto_2

    .line 86
    :cond_3
    iget-wide v9, p0, Lcom/sleepycat/je/log/JEFileFilter;->maxFileNumber:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v11, v7, v9

    if-lez v11, :cond_4

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    .line 88
    :cond_4
    const/4 v0, 0x1

    .line 92
    .end local v7    # "fileNum":J
    :cond_5
    :goto_2
    goto :goto_3

    .line 90
    :catch_0
    move-exception v7

    .line 91
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 93
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    if-eqz v4, :cond_6

    .line 95
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    const/4 v0, 0x1

    .line 99
    goto :goto_4

    .line 97
    :catch_1
    move-exception v7

    .line 98
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 104
    .end local v2    # "fileSuffix":Ljava/lang/String;
    .end local v4    # "hasVersion":Z
    .end local v5    # "fileNumber":Ljava/lang/String;
    .end local v6    # "fileVersion":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_4
    return v0
.end method
