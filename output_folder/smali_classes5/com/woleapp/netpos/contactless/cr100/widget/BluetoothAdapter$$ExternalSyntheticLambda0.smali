.class public final synthetic Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

    iput p2, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

    iget v1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p1}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->lambda$onBindViewHolder$0$com-woleapp-netpos-contactless-cr100-widget-BluetoothAdapter(ILjava/util/Map;Landroid/view/View;)V

    return-void
.end method
