.class public Lch/qos/logback/classic/spi/LoggerComparator;
.super Ljava/lang/Object;
.source "LoggerComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lch/qos/logback/classic/Logger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Logger;)I
    .locals 2
    .param p1, "l1"    # Lch/qos/logback/classic/Logger;
    .param p2, "l2"    # Lch/qos/logback/classic/Logger;

    .line 23
    invoke-virtual {p1}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const/4 v0, -0x1

    return v0

    .line 29
    :cond_1
    invoke-virtual {p2}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    const/4 v0, 0x1

    return v0

    .line 32
    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lch/qos/logback/classic/Logger;

    check-cast p2, Lch/qos/logback/classic/Logger;

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/classic/spi/LoggerComparator;->compare(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Logger;)I

    move-result p1

    return p1
.end method
