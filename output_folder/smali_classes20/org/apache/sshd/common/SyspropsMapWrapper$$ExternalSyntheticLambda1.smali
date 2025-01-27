.class public final synthetic Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Properties;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Properties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/util/Properties;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
