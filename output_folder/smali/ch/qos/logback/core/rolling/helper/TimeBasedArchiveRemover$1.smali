.class Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$1;
.super Ljava/lang/Object;
.source "TimeBasedArchiveRemover.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->descendingSortByLastModified([Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;


# direct methods
.method constructor <init>(Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$1;->this$0:Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 122
    .local v0, "l1":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 123
    .local v2, "l2":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 124
    const/4 v4, 0x0

    return v4

    .line 126
    :cond_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 127
    const/4 v4, -0x1

    return v4

    .line 129
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 118
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
