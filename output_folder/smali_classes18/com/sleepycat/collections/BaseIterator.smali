.class abstract Lcom/sleepycat/collections/BaseIterator;
.super Ljava/lang/Object;
.source "BaseIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    .local p0, "this":Lcom/sleepycat/collections/BaseIterator;, "Lcom/sleepycat/collections/BaseIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract dup()Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method abstract isCurrentData(Ljava/lang/Object;)Z
.end method

.method abstract moveToIndex(I)Z
.end method
