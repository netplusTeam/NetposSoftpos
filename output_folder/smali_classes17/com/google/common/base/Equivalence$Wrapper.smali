.class public final Lcom/google/common/base/Equivalence$Wrapper;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final equivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final reference:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/base/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/base/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/google/common/base/Equivalence$Wrapper;, "Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    .local p1, "equivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<-TT;>;"
    .local p2, "reference":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    .line 197
    iput-object p2, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;Lcom/google/common/base/Equivalence$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/base/Equivalence;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/google/common/base/Equivalence$1;

    .line 191
    .local p0, "this":Lcom/google/common/base/Equivalence$Wrapper;, "Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Equivalence$Wrapper;-><init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 213
    .local p0, "this":Lcom/google/common/base/Equivalence$Wrapper;, "Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    if-ne p1, p0, :cond_0

    .line 214
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    instance-of v0, p1, Lcom/google/common/base/Equivalence$Wrapper;

    if-eqz v0, :cond_1

    .line 217
    move-object v0, p1

    check-cast v0, Lcom/google/common/base/Equivalence$Wrapper;

    .line 219
    .local v0, "that":Lcom/google/common/base/Equivalence$Wrapper;, "Lcom/google/common/base/Equivalence$Wrapper<*>;"
    iget-object v1, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    iget-object v2, v0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    .line 226
    .local v1, "equivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 229
    .end local v0    # "that":Lcom/google/common/base/Equivalence$Wrapper;, "Lcom/google/common/base/Equivalence$Wrapper<*>;"
    .end local v1    # "equivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/base/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/google/common/base/Equivalence$Wrapper;, "Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 235
    .local p0, "this":Lcom/google/common/base/Equivalence$Wrapper;, "Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    iget-object v1, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 244
    .local p0, "this":Lcom/google/common/base/Equivalence$Wrapper;, "Lcom/google/common/base/Equivalence$Wrapper<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".wrap("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
