.class public Lbsh/classpath/BshClassPath$AmbiguousName;
.super Ljava/lang/Object;
.source "BshClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/classpath/BshClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmbiguousName"
.end annotation


# instance fields
.field list:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath$AmbiguousName;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lbsh/classpath/BshClassPath$AmbiguousName;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    return-void
.end method

.method public get()Ljava/util/List;
    .locals 1

    .line 792
    iget-object v0, p0, Lbsh/classpath/BshClassPath$AmbiguousName;->list:Ljava/util/List;

    return-object v0
.end method
