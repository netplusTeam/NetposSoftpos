.class public final synthetic Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda5;->f$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda5;->f$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->$r8$lambda$U3xFdi-nbPvkxtoAyc8RknZXoV8(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;Ljava/util/List;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
