.class public final synthetic Lorg/jline/utils/Display$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/utils/Display;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/utils/Display;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/utils/Display$$ExternalSyntheticLambda1;->f$0:Lorg/jline/utils/Display;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/utils/Display$$ExternalSyntheticLambda1;->f$0:Lorg/jline/utils/Display;

    check-cast p1, Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v0, p1}, Lorg/jline/utils/Display;->$r8$lambda$a7iRFED5clcVEbPoYlBnas8Ka1Y(Lorg/jline/utils/Display;Lorg/jline/utils/InfoCmp$Capability;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
