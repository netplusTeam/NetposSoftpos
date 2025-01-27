.class final Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UtilitiesViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/MutableLiveData<",
        "Lcom/woleapp/netpos/contactless/util/Event<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/MutableLiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    move-object v1, v0

    .local v1, "it":Landroidx/lifecycle/MutableLiveData;
    const/4 v2, 0x0

    .line 54
    .local v2, "$i$a$-also-UtilitiesViewModel$_showProgressMutableLiveData$2$1":I
    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 55
    nop

    .line 53
    .end local v1    # "it":Landroidx/lifecycle/MutableLiveData;
    .end local v2    # "$i$a$-also-UtilitiesViewModel$_showProgressMutableLiveData$2$1":I
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$_showProgressMutableLiveData$2;->invoke()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method
