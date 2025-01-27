.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:D

.field public final synthetic f$1:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;


# direct methods
.method public synthetic constructor <init>(DLcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda3;->f$0:D

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda3;->f$1:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda3;->f$0:D

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda3;->f$1:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->$r8$lambda$4hK2L4w-IbLR1F-6gTKXZyt4QtU(DLcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    return-void
.end method
