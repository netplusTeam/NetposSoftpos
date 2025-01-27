.class public Lcom/sleepycat/utilint/FormatUtil;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# static fields
.field private static final DECIMAL_SCALE0:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DECIMAL_SCALE2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/sleepycat/utilint/FormatUtil$1;

    invoke-direct {v0}, Lcom/sleepycat/utilint/FormatUtil$1;-><init>()V

    sput-object v0, Lcom/sleepycat/utilint/FormatUtil;->DECIMAL_SCALE0:Ljava/lang/ThreadLocal;

    .line 34
    new-instance v0, Lcom/sleepycat/utilint/FormatUtil$2;

    invoke-direct {v0}, Lcom/sleepycat/utilint/FormatUtil$2;-><init>()V

    sput-object v0, Lcom/sleepycat/utilint/FormatUtil;->DECIMAL_SCALE2:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asHexString(Ljava/util/SortedSet;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 74
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, ""

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 81
    .local v2, "rstart":J
    move-wide v4, v2

    .line 83
    .local v4, "rend":J
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 85
    .local v6, "f":J
    const-wide/16 v8, 0x1

    add-long v10, v4, v8

    cmp-long v10, v6, v10

    if-nez v10, :cond_1

    .line 87
    add-long/2addr v4, v8

    .line 88
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {v0, v2, v3, v4, v5}, Lcom/sleepycat/utilint/FormatUtil;->flushRange(Ljava/lang/StringBuilder;JJ)V

    .line 93
    move-wide v4, v6

    move-wide v2, v6

    .line 94
    .end local v6    # "f":J
    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v0, v2, v3, v4, v5}, Lcom/sleepycat/utilint/FormatUtil;->flushRange(Ljava/lang/StringBuilder;JJ)V

    .line 99
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static decimalScale0()Ljava/text/DecimalFormat;
    .locals 1

    .line 51
    sget-object v0, Lcom/sleepycat/utilint/FormatUtil;->DECIMAL_SCALE0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public static decimalScale2()Ljava/text/DecimalFormat;
    .locals 1

    .line 63
    sget-object v0, Lcom/sleepycat/utilint/FormatUtil;->DECIMAL_SCALE2:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    return-object v0
.end method

.method private static flushRange(Ljava/lang/StringBuilder;JJ)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "rstart"    # J
    .param p3, "rend"    # J

    .line 107
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    cmp-long v0, p1, p3

    const-string v1, " 0x"

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_0
    return-void
.end method
