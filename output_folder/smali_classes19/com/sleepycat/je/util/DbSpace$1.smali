.class Lcom/sleepycat/je/util/DbSpace$1;
.super Ljava/lang/Object;
.source "DbSpace.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/util/DbSpace;->print(Ljava/io/PrintStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sleepycat/je/util/DbSpace$Summary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/DbSpace;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/DbSpace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/util/DbSpace;

    .line 371
    iput-object p1, p0, Lcom/sleepycat/je/util/DbSpace$1;->this$0:Lcom/sleepycat/je/util/DbSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sleepycat/je/util/DbSpace$Summary;Lcom/sleepycat/je/util/DbSpace$Summary;)I
    .locals 2
    .param p1, "s1"    # Lcom/sleepycat/je/util/DbSpace$Summary;
    .param p2, "s2"    # Lcom/sleepycat/je/util/DbSpace$Summary;

    .line 373
    invoke-virtual {p1}, Lcom/sleepycat/je/util/DbSpace$Summary;->avgUtilization()I

    move-result v0

    invoke-virtual {p2}, Lcom/sleepycat/je/util/DbSpace$Summary;->avgUtilization()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 371
    check-cast p1, Lcom/sleepycat/je/util/DbSpace$Summary;

    check-cast p2, Lcom/sleepycat/je/util/DbSpace$Summary;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/util/DbSpace$1;->compare(Lcom/sleepycat/je/util/DbSpace$Summary;Lcom/sleepycat/je/util/DbSpace$Summary;)I

    move-result p1

    return p1
.end method
