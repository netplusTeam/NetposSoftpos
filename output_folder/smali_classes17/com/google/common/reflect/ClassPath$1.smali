.class Lcom/google/common/reflect/ClassPath$1;
.super Ljava/lang/Object;
.source "ClassPath.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/ClassPath;->getTopLevelClasses()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/google/common/reflect/ClassPath$ClassInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/reflect/ClassPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/reflect/ClassPath;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/reflect/ClassPath$ClassInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/google/common/reflect/ClassPath$ClassInfo;

    .line 174
    invoke-virtual {p1}, Lcom/google/common/reflect/ClassPath$ClassInfo;->isTopLevel()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 171
    check-cast p1, Lcom/google/common/reflect/ClassPath$ClassInfo;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/ClassPath$1;->apply(Lcom/google/common/reflect/ClassPath$ClassInfo;)Z

    move-result p1

    return p1
.end method
