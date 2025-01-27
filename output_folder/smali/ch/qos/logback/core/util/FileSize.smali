.class public Lch/qos/logback/core/util/FileSize;
.super Ljava/lang/Object;
.source "FileSize.java"


# static fields
.field private static final DOUBLE_GROUP:I = 0x1

.field private static final FILE_SIZE_PATTERN:Ljava/util/regex/Pattern;

.field public static final GB_COEFFICIENT:J = 0x40000000L

.field public static final KB_COEFFICIENT:J = 0x400L

.field private static final LENGTH_PART:Ljava/lang/String; = "([0-9]+)"

.field public static final MB_COEFFICIENT:J = 0x100000L

.field private static final UNIT_GROUP:I = 0x2

.field private static final UNIT_PART:Ljava/lang/String; = "(|kb|mb|gb)s?"


# instance fields
.field final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "([0-9]+)\\s*(|kb|mb|gb)s?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/util/FileSize;->FILE_SIZE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "size"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lch/qos/logback/core/util/FileSize;->size:J

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/util/FileSize;
    .locals 10
    .param p0, "fileSizeStr"    # Ljava/lang/String;

    .line 57
    sget-object v0, Lch/qos/logback/core/util/FileSize;->FILE_SIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "lenStr":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "unitStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 65
    .local v3, "lenValue":J
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const-wide/16 v5, 0x1

    .local v5, "coefficient":J
    goto :goto_0

    .line 67
    .end local v5    # "coefficient":J
    :cond_0
    const-string v5, "kb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    const-wide/16 v5, 0x400

    .restart local v5    # "coefficient":J
    goto :goto_0

    .line 69
    .end local v5    # "coefficient":J
    :cond_1
    const-string v5, "mb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const-wide/32 v5, 0x100000

    .restart local v5    # "coefficient":J
    goto :goto_0

    .line 71
    .end local v5    # "coefficient":J
    :cond_2
    const-string v5, "gb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 72
    const-wide/32 v5, 0x40000000

    .line 76
    .restart local v5    # "coefficient":J
    :goto_0
    new-instance v7, Lch/qos/logback/core/util/FileSize;

    mul-long v8, v3, v5

    invoke-direct {v7, v8, v9}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    return-object v7

    .line 74
    .end local v5    # "coefficient":J
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
    .end local v1    # "lenStr":Ljava/lang/String;
    .end local v2    # "unitStr":Ljava/lang/String;
    .end local v3    # "lenValue":J
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not in the expected format."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSize()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lch/qos/logback/core/util/FileSize;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 84
    iget-wide v0, p0, Lch/qos/logback/core/util/FileSize;->size:J

    const-wide/16 v2, 0x400

    div-long v2, v0, v2

    .line 86
    .local v2, "inKB":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lch/qos/logback/core/util/FileSize;->size:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const-wide/32 v6, 0x100000

    div-long v6, v0, v6

    .line 90
    .local v6, "inMB":J
    cmp-long v8, v6, v4

    if-nez v8, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    const-wide/32 v8, 0x40000000

    div-long/2addr v0, v8

    .line 95
    .local v0, "inGB":J
    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 99
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
