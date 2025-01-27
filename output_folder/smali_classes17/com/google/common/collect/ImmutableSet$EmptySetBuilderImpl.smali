.class final Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;
.super Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptySetBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 651
    new-instance v0, Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;-><init>()V

    sput-object v0, Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;->INSTANCE:Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 659
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(I)V

    .line 660
    return-void
.end method

.method static instance()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 655
    sget-object v0, Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;->INSTANCE:Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;

    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method build()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 674
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl<TE;>;"
    return-object p0
.end method
