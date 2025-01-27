.class public final enum Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlternateInterfacePreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

.field private static final synthetic a:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;


# instance fields
.field private final b:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    const-string v1, "NA"

    const/4 v2, 0x0

    const/16 v3, 0xf0

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    aput-object v0, v1, v2

    sput-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->a:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->b:I

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->a:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    return-object v0
.end method


# virtual methods
.method public getAlternateInterfacePreference()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->b:I

    return v0
.end method
