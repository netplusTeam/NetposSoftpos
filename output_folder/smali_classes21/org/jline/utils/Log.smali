.class public final Lorg/jline/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "org.jline"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/utils/Log;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRecord(Ljava/util/logging/Level;Ljava/util/function/Supplier;)Ljava/util/logging/LogRecord;
    .locals 2
    .param p0, "level"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/logging/LogRecord;"
        }
    .end annotation

    .line 101
    .local p1, "message":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0
.end method

.method static varargs createRecord(Ljava/util/logging/Level;[Ljava/lang/Object;)Ljava/util/logging/LogRecord;
    .locals 6
    .param p0, "level"    # Ljava/util/logging/Level;
    .param p1, "messages"    # [Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v2, "ps":Ljava/io/PrintStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 87
    add-int/lit8 v4, v3, 0x1

    array-length v5, p1

    if-ne v4, v5, :cond_0

    aget-object v4, p1, v3

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 88
    aget-object v4, p1, v3

    move-object v0, v4

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_1

    .line 91
    :cond_0
    aget-object v4, p1, v3

    invoke-static {v2, v4}, Lorg/jline/utils/Log;->render(Ljava/io/PrintStream;Ljava/lang/Object;)V

    .line 85
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 95
    new-instance v3, Ljava/util/logging/LogRecord;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 96
    .local v3, "r":Ljava/util/logging/LogRecord;
    invoke-virtual {v3, v0}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 97
    return-object v3
.end method

.method public static debug(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0, p0}, Lorg/jline/utils/Log;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 38
    return-void
.end method

.method public static varargs debug([Ljava/lang/Object;)V
    .locals 1
    .param p0, "messages"    # [Ljava/lang/Object;

    .line 41
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0, p0}, Lorg/jline/utils/Log;->log(Ljava/util/logging/Level;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public static varargs error([Ljava/lang/Object;)V
    .locals 1
    .param p0, "messages"    # [Ljava/lang/Object;

    .line 53
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0, p0}, Lorg/jline/utils/Log;->log(Ljava/util/logging/Level;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static varargs info([Ljava/lang/Object;)V
    .locals 1
    .param p0, "messages"    # [Ljava/lang/Object;

    .line 45
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v0, p0}, Lorg/jline/utils/Log;->log(Ljava/util/logging/Level;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 57
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0}, Lorg/jline/utils/Log;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method static isEnabled(Ljava/util/logging/Level;)Z
    .locals 1
    .param p0, "level"    # Ljava/util/logging/Level;

    .line 122
    sget-object v0, Lorg/jline/utils/Log;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$log$0(Ljava/util/logging/Level;Ljava/util/function/Supplier;)Ljava/util/logging/LogRecord;
    .locals 1
    .param p0, "level"    # Ljava/util/logging/Level;
    .param p1, "message"    # Ljava/util/function/Supplier;

    .line 105
    invoke-static {p0, p1}, Lorg/jline/utils/Log;->createRecord(Ljava/util/logging/Level;Ljava/util/function/Supplier;)Ljava/util/logging/LogRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$log$1(Ljava/util/logging/Level;[Ljava/lang/Object;)Ljava/util/logging/LogRecord;
    .locals 1
    .param p0, "level"    # Ljava/util/logging/Level;
    .param p1, "messages"    # [Ljava/lang/Object;

    .line 109
    invoke-static {p0, p1}, Lorg/jline/utils/Log;->createRecord(Ljava/util/logging/Level;[Ljava/lang/Object;)Ljava/util/logging/LogRecord;

    move-result-object v0

    return-object v0
.end method

.method static log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V
    .locals 1
    .param p0, "level"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "message":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    new-instance v0, Lorg/jline/utils/Log$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/jline/utils/Log$$ExternalSyntheticLambda0;-><init>(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    invoke-static {p0, v0}, Lorg/jline/utils/Log;->logr(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 106
    return-void
.end method

.method static varargs log(Ljava/util/logging/Level;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "level"    # Ljava/util/logging/Level;
    .param p1, "messages"    # [Ljava/lang/Object;

    .line 109
    new-instance v0, Lorg/jline/utils/Log$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/jline/utils/Log$$ExternalSyntheticLambda1;-><init>(Ljava/util/logging/Level;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lorg/jline/utils/Log;->logr(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 110
    return-void
.end method

.method static logr(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V
    .locals 3
    .param p0, "level"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "record":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/logging/LogRecord;>;"
    sget-object v0, Lorg/jline/utils/Log;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogRecord;

    .line 116
    .local v1, "tmp":Ljava/util/logging/LogRecord;
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 119
    .end local v1    # "tmp":Ljava/util/logging/LogRecord;
    :cond_0
    return-void
.end method

.method static render(Ljava/io/PrintStream;Ljava/lang/Object;)V
    .locals 4
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "message"    # Ljava/lang/Object;

    .line 64
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 67
    .local v0, "array":[Ljava/lang/Object;
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 69
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 70
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 71
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 75
    .end local v0    # "array":[Ljava/lang/Object;
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 79
    :goto_1
    return-void
.end method

.method public static trace(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {v0, p0}, Lorg/jline/utils/Log;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 34
    return-void
.end method

.method public static varargs trace([Ljava/lang/Object;)V
    .locals 1
    .param p0, "messages"    # [Ljava/lang/Object;

    .line 29
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {v0, p0}, Lorg/jline/utils/Log;->log(Ljava/util/logging/Level;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static varargs warn([Ljava/lang/Object;)V
    .locals 1
    .param p0, "messages"    # [Ljava/lang/Object;

    .line 49
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, p0}, Lorg/jline/utils/Log;->log(Ljava/util/logging/Level;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method
