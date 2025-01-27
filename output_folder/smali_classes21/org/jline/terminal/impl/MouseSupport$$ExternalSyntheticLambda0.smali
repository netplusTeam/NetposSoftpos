.class public final synthetic Lorg/jline/terminal/impl/MouseSupport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/terminal/Terminal;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/terminal/Terminal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/terminal/impl/MouseSupport$$ExternalSyntheticLambda0;->f$0:Lorg/jline/terminal/Terminal;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 1

    iget-object v0, p0, Lorg/jline/terminal/impl/MouseSupport$$ExternalSyntheticLambda0;->f$0:Lorg/jline/terminal/Terminal;

    invoke-static {v0}, Lorg/jline/terminal/impl/MouseSupport;->lambda$readMouse$0(Lorg/jline/terminal/Terminal;)I

    move-result v0

    return v0
.end method
