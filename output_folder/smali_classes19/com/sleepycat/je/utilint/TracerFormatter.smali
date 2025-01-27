.class public Lcom/sleepycat/je/utilint/TracerFormatter;
.super Ljava/util/logging/Formatter;
.source "TracerFormatter.java"


# static fields
.field private static final FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS z"

.field private static final TIMEZONE:Ljava/util/TimeZone;


# instance fields
.field private final date:Ljava/util/Date;

.field private envName:Ljava/lang/String;

.field private final formatter:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/utilint/TracerFormatter;->TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TracerFormatter;->date:Ljava/util/Date;

    .line 39
    invoke-static {}, Lcom/sleepycat/je/utilint/TracerFormatter;->makeDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TracerFormatter;->formatter:Ljava/text/DateFormat;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "envName"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/TracerFormatter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TracerFormatter;->envName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static makeDateFormat()Ljava/text/DateFormat;
    .locals 2

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "df":Ljava/text/DateFormat;
    sget-object v1, Lcom/sleepycat/je/utilint/TracerFormatter;->TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method protected appendEnvironmentName(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TracerFormatter;->envName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TracerFormatter;->envName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    return-void
.end method

.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/je/utilint/TracerFormatter;->getDate(J)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "dateVal":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/TracerFormatter;->appendEnvironmentName(Ljava/lang/StringBuilder;)V

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/TracerFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/utilint/TracerFormatter;->getThrown(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized getDate(J)Ljava/lang/String;
    .locals 2
    .param p1, "millis"    # J

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TracerFormatter;->date:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 57
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TracerFormatter;->formatter:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TracerFormatter;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 54
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TracerFormatter;
    .end local p1    # "millis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getThrown(Ljava/util/logging/LogRecord;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 96
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 97
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 98
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 99
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 104
    :cond_0
    :goto_0
    return-void
.end method
