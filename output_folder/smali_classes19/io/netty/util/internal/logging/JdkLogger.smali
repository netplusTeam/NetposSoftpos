.class Lio/netty/util/internal/logging/JdkLogger;
.super Lio/netty/util/internal/logging/AbstractInternalLogger;
.source "JdkLogger.java"


# static fields
.field static final SELF:Ljava/lang/String;

.field static final SUPER:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x18869d0bd8562dfbL


# instance fields
.field final transient logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 609
    const-class v0, Lio/netty/util/internal/logging/JdkLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    .line 610
    const-class v0, Lio/netty/util/internal/logging/AbstractInternalLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/logging/JdkLogger;->SUPER:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 57
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/util/internal/logging/AbstractInternalLogger;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    .line 59
    return-void
.end method

.method private static fillCallerData(Ljava/lang/String;Ljava/util/logging/LogRecord;)V
    .locals 6
    .param p0, "callerFQCN"    # Ljava/lang/String;
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 619
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 621
    .local v0, "steArray":[Ljava/lang/StackTraceElement;
    const/4 v1, -0x1

    .line 622
    .local v1, "selfIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 623
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lio/netty/util/internal/logging/JdkLogger;->SUPER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 622
    .end local v3    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .restart local v3    # "className":Ljava/lang/String;
    :cond_1
    :goto_1
    move v1, v2

    .line 630
    .end local v2    # "i":I
    .end local v3    # "className":Ljava/lang/String;
    :cond_2
    const/4 v2, -0x1

    .line 631
    .local v2, "found":I
    add-int/lit8 v3, v1, 0x1

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 632
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lio/netty/util/internal/logging/JdkLogger;->SUPER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 634
    move v2, v3

    .line 635
    goto :goto_3

    .line 631
    .end local v4    # "className":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 639
    .end local v3    # "i":I
    :cond_4
    :goto_3
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 640
    aget-object v3, v0, v2

    .line 643
    .local v3, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 646
    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    :cond_5
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "callerFQCN"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/util/logging/Level;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 602
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p2, p3}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 603
    .local v0, "record":Ljava/util/logging/LogRecord;
    invoke-virtual {p0}, Lio/netty/util/internal/logging/JdkLogger;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 605
    invoke-static {p1, v0}, Lio/netty/util/internal/logging/JdkLogger;->fillCallerData(Ljava/lang/String;Ljava/util/logging/LogRecord;)V

    .line 606
    iget-object v1, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 607
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 207
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 231
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 267
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 253
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 527
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 551
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 588
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 573
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 312
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 336
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 373
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 358
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 174
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 493
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 386
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 102
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 126
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 162
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 148
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 420
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 444
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 481
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lio/netty/util/internal/logging/JdkLogger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 466
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    sget-object v1, Lio/netty/util/internal/logging/JdkLogger;->SELF:Ljava/lang/String;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/util/internal/logging/JdkLogger;->log(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method
