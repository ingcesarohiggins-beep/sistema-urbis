// Script to create users in Supabase Auth and insert profiles
// Run with: node create_users.js

import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://eijbpenbvlsvhsfchkdz.supabase.co';
const supabaseAnonKey = 'sb_publishable_TK3W-TzPoPEn6C8llew0aA_OsHfXhef';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

const users = [
  {
    email: 'ing.cesarohiggins@gmail.com',
    password: 'urbis2026',
    full_name: 'César Higgins',
    role: 'admin'
  },
  {
    email: 'supervisor@urbis.com',
    password: 'sup1234',
    full_name: 'Supervisor Urbis',
    role: 'manager'
  },
  {
    email: 'secretaria@urbis.com',
    password: 'secre1234',
    full_name: 'Secretaria Urbis',
    role: 'secretary'
  }
];

async function createUsers() {
  for (const user of users) {
    console.log(`\n--- Creating user: ${user.email} ---`);
    
    // 1. Sign up the user
    const { data, error } = await supabase.auth.signUp({
      email: user.email,
      password: user.password,
    });

    if (error) {
      console.log(`ERROR signing up ${user.email}:`, error.message);
      continue;
    }

    console.log(`User created: ${data.user?.id || 'unknown'}`);
    console.log(`Email confirmed: ${data.user?.email_confirmed_at ? 'YES' : 'NO (needs confirmation)'}`);
    
    if (data.user?.id) {
      // 2. Insert profile
      const { error: profileError } = await supabase
        .from('profiles')
        .upsert({
          id: data.user.id,
          email: user.email,
          full_name: user.full_name,
          role: user.role
        });

      if (profileError) {
        console.log(`Profile insert error for ${user.email}:`, profileError.message);
        console.log(`-> You may need to insert profile manually via SQL:`);
        console.log(`INSERT INTO profiles (id, email, full_name, role) VALUES ('${data.user.id}', '${user.email}', '${user.full_name}', '${user.role}');`);
      } else {
        console.log(`Profile created: ${user.full_name} (${user.role})`);
      }
    }
  }
  
  console.log('\n=== DONE ===');
}

createUsers();
