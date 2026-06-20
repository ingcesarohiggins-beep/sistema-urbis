export async function logActivity(supabase, { userId, userEmail, action, entityType, entityId, details }) {
  try {
    const { error } = await supabase.from('activity_log').insert({
      user_id: userId,
      user_email: userEmail,
      action,
      entity_type: entityType,
      entity_id: entityId,
      details
    });
    if (error) {
      console.error('Error logging activity:', error);
    }
  } catch (err) {
    console.error('Unexpected error logging activity:', err);
  }
}
