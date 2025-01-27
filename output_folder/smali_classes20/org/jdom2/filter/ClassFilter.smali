.class final Lorg/jdom2/filter/ClassFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "ClassFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdom2/filter/AbstractFilter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final fclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/jdom2/filter/ClassFilter;, "Lorg/jdom2/filter/ClassFilter<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/jdom2/filter/ClassFilter;->fclass:Ljava/lang/Class;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 93
    .local p0, "this":Lorg/jdom2/filter/ClassFilter;, "Lorg/jdom2/filter/ClassFilter<TT;>;"
    if-ne p1, p0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    instance-of v0, p1, Lorg/jdom2/filter/ClassFilter;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lorg/jdom2/filter/ClassFilter;->fclass:Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lorg/jdom2/filter/ClassFilter;

    iget-object v1, v1, Lorg/jdom2/filter/ClassFilter;->fclass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public filter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/jdom2/filter/ClassFilter;, "Lorg/jdom2/filter/ClassFilter<TT;>;"
    iget-object v0, p0, Lorg/jdom2/filter/ClassFilter;->fclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom2/filter/ClassFilter;->fclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 104
    .local p0, "this":Lorg/jdom2/filter/ClassFilter;, "Lorg/jdom2/filter/ClassFilter<TT;>;"
    iget-object v0, p0, Lorg/jdom2/filter/ClassFilter;->fclass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    .local p0, "this":Lorg/jdom2/filter/ClassFilter;, "Lorg/jdom2/filter/ClassFilter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ClassFilter: Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/ClassFilter;->fclass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
