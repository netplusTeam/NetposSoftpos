.class Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;
.super Ljava/lang/Object;
.source "FileProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogSizeStats"
.end annotation


# instance fields
.field final activeSize:J

.field final protectedSize:J

.field final protectedSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final reservedSize:J


# direct methods
.method constructor <init>(JJJLjava/util/Map;)V
    .locals 0
    .param p1, "activeSize"    # J
    .param p3, "reservedSize"    # J
    .param p5, "protectedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 670
    .local p7, "protectedSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-wide p1, p0, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->activeSize:J

    .line 672
    iput-wide p3, p0, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->reservedSize:J

    .line 673
    iput-wide p5, p0, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->protectedSize:J

    .line 674
    iput-object p7, p0, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;->protectedSizeMap:Ljava/util/Map;

    .line 675
    return-void
.end method
