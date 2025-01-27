.class Lcom/sleepycat/je/statcap/StatUtils;
.super Ljava/lang/Object;
.source "StatUtils.java"


# static fields
.field private static final date:Ljava/util/Date;

.field private static final formatter:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/sleepycat/je/utilint/TracerFormatter;->makeDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/statcap/StatUtils;->formatter:Ljava/text/DateFormat;

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/sleepycat/je/statcap/StatUtils;->date:Ljava/util/Date;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDate(J)Ljava/lang/String;
    .locals 3
    .param p0, "millis"    # J

    const-class v0, Lcom/sleepycat/je/statcap/StatUtils;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/sleepycat/je/statcap/StatUtils;->date:Ljava/util/Date;

    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 29
    sget-object v2, Lcom/sleepycat/je/statcap/StatUtils;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 27
    .end local p0    # "millis":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
