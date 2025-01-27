.class public final synthetic Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Landroid/app/ProgressDialog;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/app/Activity;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$0:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$3:Landroidx/lifecycle/MutableLiveData;

    iput-object p5, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$0:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$3:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/util/CardExtKt$$ExternalSyntheticLambda4;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v5, p1

    check-cast v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/util/CardExtKt;->$r8$lambda$EMAAs0liBkTHdh3LowoFtCJuaTE(Landroid/app/ProgressDialog;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/app/Activity;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method
