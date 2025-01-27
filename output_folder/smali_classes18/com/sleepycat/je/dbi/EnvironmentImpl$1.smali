.class Lcom/sleepycat/je/dbi/EnvironmentImpl$1;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/EnvironmentImpl;->preload([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sleepycat/je/dbi/DatabaseImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/EnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3671
    iput-object p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$1;->this$0:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;)I
    .locals 3
    .param p1, "o1"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "o2"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 3674
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    .line 3675
    .local v0, "id1":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    .line 3676
    .local v1, "id2":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->compareTo(Lcom/sleepycat/je/dbi/DatabaseId;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3671
    check-cast p1, Lcom/sleepycat/je/dbi/DatabaseImpl;

    check-cast p2, Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl$1;->compare(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result p1

    return p1
.end method
