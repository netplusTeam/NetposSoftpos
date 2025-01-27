.class public final synthetic Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;

.field public final synthetic f$1:Lcom/woleapp/netpos/contactless/model/Service;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;Lcom/woleapp/netpos/contactless/model/Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/woleapp/netpos/contactless/model/Service;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/woleapp/netpos/contactless/model/Service;

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;->$r8$lambda$_S6qm8gLvevWsFD6Pe5B4h-9mFI(Lcom/woleapp/netpos/contactless/adapter/ServiceViewHolder;Lcom/woleapp/netpos/contactless/model/Service;Landroid/view/View;)V

    return-void
.end method
