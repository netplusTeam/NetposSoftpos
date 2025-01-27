.class public final synthetic Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;

.field public final synthetic f$1:Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda1;->f$0:Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda1;->f$1:Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda1;->f$0:Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda1;->f$1:Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;

    invoke-virtual {v0, v1, p1}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->lambda$new$1$com-woleapp-netpos-contactless-ui-dialog-PasswordDialog(Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;Landroid/view/View;)V

    return-void
.end method
