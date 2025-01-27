.class public Lorg/jline/console/ArgDesc;
.super Ljava/lang/Object;
.source "ArgDesc.java"


# instance fields
.field private final description:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jline/console/ArgDesc;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "description":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/jline/console/ArgDesc;->name:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/console/ArgDesc;->description:Ljava/util/List;

    .line 27
    return-void
.end method

.method public static doArgNames(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jline/console/ArgDesc;",
            ">;"
        }
    .end annotation

    .line 38
    .local p0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lorg/jline/console/ArgDesc;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    .local v2, "n":Ljava/lang/String;
    new-instance v3, Lorg/jline/console/ArgDesc;

    invoke-direct {v3, v2}, Lorg/jline/console/ArgDesc;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v2    # "n":Ljava/lang/String;
    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/jline/console/ArgDesc;->description:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/jline/console/ArgDesc;->name:Ljava/lang/String;

    return-object v0
.end method
