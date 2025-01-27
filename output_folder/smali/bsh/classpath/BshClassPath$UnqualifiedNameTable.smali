.class Lbsh/classpath/BshClassPath$UnqualifiedNameTable;
.super Ljava/util/HashMap;
.source "BshClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/classpath/BshClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnqualifiedNameTable"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 4
    .param p1, "fullname"    # Ljava/lang/String;

    .line 767
    invoke-static {p1}, Lbsh/classpath/BshClassPath;->splitClassname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 768
    .local v0, "name":Ljava/lang/String;
    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 770
    .local v1, "have":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 771
    invoke-super {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 773
    :cond_0
    instance-of v2, v1, Lbsh/classpath/BshClassPath$AmbiguousName;

    if-eqz v2, :cond_1

    .line 774
    move-object v2, v1

    check-cast v2, Lbsh/classpath/BshClassPath$AmbiguousName;

    invoke-virtual {v2, p1}, Lbsh/classpath/BshClassPath$AmbiguousName;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_1
    new-instance v2, Lbsh/classpath/BshClassPath$AmbiguousName;

    invoke-direct {v2}, Lbsh/classpath/BshClassPath$AmbiguousName;-><init>()V

    .line 778
    .local v2, "an":Lbsh/classpath/BshClassPath$AmbiguousName;
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lbsh/classpath/BshClassPath$AmbiguousName;->add(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v2, p1}, Lbsh/classpath/BshClassPath$AmbiguousName;->add(Ljava/lang/String;)V

    .line 780
    invoke-super {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .end local v2    # "an":Lbsh/classpath/BshClassPath$AmbiguousName;
    :goto_0
    return-void
.end method
