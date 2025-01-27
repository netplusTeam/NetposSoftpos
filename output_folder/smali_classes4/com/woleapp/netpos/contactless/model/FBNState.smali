.class public final Lcom/woleapp/netpos/contactless/model/FBNState;
.super Ljava/lang/Object;
.source "FBNState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\u0008\u0010\u0018\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/FBNState;",
        "",
        "createdAt",
        "",
        "id",
        "",
        "state",
        "updatedAt",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getCreatedAt",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "getState",
        "getUpdatedAt",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final createdAt:Ljava/lang/String;

.field private final id:I

.field private final state:Ljava/lang/String;

.field private final updatedAt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "createdAt"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "updatedAt"    # Ljava/lang/String;

    const-string v0, "createdAt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedAt"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->createdAt:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->id:I

    .line 6
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->state:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->updatedAt:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static synthetic copy$default(Lcom/woleapp/netpos/contactless/model/FBNState;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/FBNState;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->createdAt:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->id:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->state:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->updatedAt:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/model/FBNState;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/FBNState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->id:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/FBNState;
    .locals 1

    const-string v0, "createdAt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedAt"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/woleapp/netpos/contactless/model/FBNState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/model/FBNState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/woleapp/netpos/contactless/model/FBNState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/FBNState;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->createdAt:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/FBNState;->createdAt:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->id:I

    iget v4, v1, Lcom/woleapp/netpos/contactless/model/FBNState;->id:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->state:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/FBNState;->state:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->updatedAt:Ljava/lang/String;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/FBNState;->updatedAt:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->id:I

    return v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->createdAt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->state:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->updatedAt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/FBNState;->state:Ljava/lang/String;

    return-object v0
.end method
