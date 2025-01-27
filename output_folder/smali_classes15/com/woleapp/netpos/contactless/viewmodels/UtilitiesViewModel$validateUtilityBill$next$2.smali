.class final synthetic Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$validateUtilityBill$next$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UtilitiesViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->validateUtilityBill()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    const/4 v1, 0x0

    const-string v4, "checkHasSufficientBalance"

    const-string v5, "checkHasSufficientBalance()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$validateUtilityBill$next$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$validateUtilityBill$next$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->checkHasSufficientBalance()V

    return-void
.end method
